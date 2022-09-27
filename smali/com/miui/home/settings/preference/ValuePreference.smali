.class public Lcom/miui/home/settings/preference/ValuePreference;
.super Lmiuix/preference/TextPreference;
.source "ValuePreference.java"

# interfaces
.implements Lcom/miui/home/settings/preference/DisableTips;


# instance fields
.field private mToastTips:Lcom/miui/home/settings/preference/ToastDisableTips;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lmiuix/preference/TextPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lmiuix/preference/TextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2, p3}, Lmiuix/preference/TextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public setValue(I)V
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/preference/ValuePreference;->setText(I)V

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/preference/ValuePreference;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public showDisableTips()V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/miui/home/settings/preference/ValuePreference;->mToastTips:Lcom/miui/home/settings/preference/ToastDisableTips;

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {v0}, Lcom/miui/home/settings/preference/ToastDisableTips;->showDisableTips()V

    :cond_0
    return-void
.end method
