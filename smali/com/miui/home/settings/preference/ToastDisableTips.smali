.class public Lcom/miui/home/settings/preference/ToastDisableTips;
.super Ljava/lang/Object;
.source "ToastDisableTips.java"

# interfaces
.implements Lcom/miui/home/settings/preference/DisableTips;


# instance fields
.field private mTipRes:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setDisableTips(I)V
    .locals 0

    .line 12
    iput p1, p0, Lcom/miui/home/settings/preference/ToastDisableTips;->mTipRes:I

    return-void
.end method

.method public showDisableTips()V
    .locals 3

    .line 17
    iget v0, p0, Lcom/miui/home/settings/preference/ToastDisableTips;->mTipRes:I

    if-lez v0, :cond_0

    .line 18
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/settings/preference/ToastDisableTips;->mTipRes:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
