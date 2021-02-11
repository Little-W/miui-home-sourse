.class public final synthetic Lcom/miui/home/launcher/allapps/settings/-$$Lambda$CategoryOrderAdapter$EEZmqph_qkX_Pt7mXGsvyZ4SfSE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;

.field private final synthetic f$1:Lcom/miui/home/launcher/allapps/category/CategoryInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;Lcom/miui/home/launcher/allapps/category/CategoryInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/settings/-$$Lambda$CategoryOrderAdapter$EEZmqph_qkX_Pt7mXGsvyZ4SfSE;->f$0:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/settings/-$$Lambda$CategoryOrderAdapter$EEZmqph_qkX_Pt7mXGsvyZ4SfSE;->f$1:Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/settings/-$$Lambda$CategoryOrderAdapter$EEZmqph_qkX_Pt7mXGsvyZ4SfSE;->f$0:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/settings/-$$Lambda$CategoryOrderAdapter$EEZmqph_qkX_Pt7mXGsvyZ4SfSE;->f$1:Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    invoke-static {v0, v1, p1}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->lambda$onBindViewHolder$1(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;Lcom/miui/home/launcher/allapps/category/CategoryInfo;Landroid/view/View;)V

    return-void
.end method
