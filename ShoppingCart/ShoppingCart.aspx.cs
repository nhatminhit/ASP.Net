﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HoangNhatMinh_2019601026
{
    public partial class ShoppingCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string action = Request["action"];
            if (action != null)
            {
                if (action.Equals("del"))
                {
                    List<CartItem> li2 = (List<CartItem>)Session["Cart"];
                    CartItem ci2 = new CartItem();
                    ci2.product.MaTs = Request["TenTs"];
                    li2.Remove(ci2);
                    Session["Cart"] = li2;
                }
                else if (action.Equals("add"))
                {
                    string MaTs = Request["MaTs"];
                    string TenTs = Request["TenTs"];
                    string Mota = Request["Mota"];
                    decimal Giatien = Decimal.Parse(Request["Giatien"]);
                    CartItem ci = new CartItem();
                    ci.product.MaTs = MaTs;
                    ci.product.TenTs = TenTs;
                    ci.product.Mota = Mota;
                    ci.product.Giatien = Giatien;
                    ci.quantity = 1;
                    List<CartItem> li = (List<CartItem>)Session["Cart"];
                    if (li == null)
                    {
                        li = new List<CartItem>();
                    }
                    if (li.Contains(ci))
                    {
                        li[li.IndexOf(ci)].quantity++;
                    }
                    else
                        li.Add(ci);
                    Session["Cart"] = li;
                }
                else if (action.Equals("delall"))
                {
                    Session["Cart"] = null;
                }
                else if (action.Equals("update")) //Update 1 lần ở cuối form
                {
                    // Trong master phải thêm action <form id="form1" runat="server" 
                    //                    action = "ShoppingCart.aspx" > nếu không action sẽ mặc định là del hoặc add tùy theo khi ta click
                    //vào link nào.Trong tất cả các form hiển thị, chỉ có button update là submit
                    List<CartItem> li = (List<CartItem>)Session["Cart"];
                    string pMaTs = Request["MaTs"];
                    string quantity = Request["qq"];
                    string[] aMaTs = pMaTs.Split(',');
                    string[] aquantity = quantity.Split(',');
                    int i = 0;
                    foreach (var item in li)
                    {
                        CartItem it = new CartItem();
                        it.product.MaTs = aMaTs[i];
                        it.quantity = int.Parse(aquantity[i]);
                        int ix = li.IndexOf(it);
                        li[ix].quantity = it.quantity;

                        i++;
                    }
                    Session["Cart"] = li;
                }
            }
        }
    }
}