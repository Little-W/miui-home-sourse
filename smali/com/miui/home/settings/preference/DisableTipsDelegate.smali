.class public Lcom/miui/home/settings/preference/DisableTipsDelegate;
.super Ljava/lang/Object;
.source "DisableTipsDelegate.java"

# interfaces
.implements Lcom/miui/home/settings/preference/DisableTips;


# instance fields
.field private mToastTips:Lcom/miui/home/settings/preference/ToastDisableTips;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setDisableTips(I)V
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/miui/home/settings/preference/DisableTipsDelegate;->mToastTips:Lcom/miui/home/settings/preference/ToastDisableTips;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/miui/home/settings/preference/ToastDisableTips;

    invoke-direct {v0}, Lcom/miui/home/settings/preference/ToastDisableTips;-><init>()V

    iput-object v0, p0, Lcom/miui/home/settings/preference/DisableTipsDelegate;->mToastTips:Lcom/miui/home/settings/preference/ToastDisableTips;

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/miui/home/settings/preference/DisableTipsDelegate;->mToastTips:Lcom/miui/home/settings/preference/ToastDisableTips;

    invoke-virtual {v0, p1}, Lcom/miui/home/settings/preference/ToastDisableTips;->setDisableTips(I)V

    return-void
.end method

.method public showDisableTips()V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/miui/home/settings/preference/DisableTipsDelegate;->mToastTips:Lcom/miui/home/settings/preference/ToastDisableTips;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Lcom/miui/home/settings/preference/ToastDisableTips;->showDisableTips()V

    :cond_0
    return-void
.end method
