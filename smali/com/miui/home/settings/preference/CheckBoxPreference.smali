.class public Lcom/miui/home/settings/preference/CheckBoxPreference;
.super Landroidx/preference/CheckBoxPreference;
.source "CheckBoxPreference.java"

# interfaces
.implements Lcom/miui/home/settings/preference/DisableTips;


# instance fields
.field private isSwitchAble:Z

.field private mToastTips:Lcom/miui/home/settings/preference/ToastDisableTips;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/miui/home/settings/preference/CheckBoxPreference;->isSwitchAble:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/miui/home/settings/preference/CheckBoxPreference;->isSwitchAble:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/miui/home/settings/preference/CheckBoxPreference;->isSwitchAble:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/miui/home/settings/preference/CheckBoxPreference;->isSwitchAble:Z

    return-void
.end method


# virtual methods
.method public performClick()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 47
    iget-boolean v0, p0, Lcom/miui/home/settings/preference/CheckBoxPreference;->isSwitchAble:Z

    if-eqz v0, :cond_0

    .line 48
    invoke-super {p0}, Landroidx/preference/CheckBoxPreference;->performClick()V

    :cond_0
    return-void
.end method

.method public setSwitchAble(Z)V
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/miui/home/settings/preference/CheckBoxPreference;->isSwitchAble:Z

    return-void
.end method

.method public showDisableTips()V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/miui/home/settings/preference/CheckBoxPreference;->mToastTips:Lcom/miui/home/settings/preference/ToastDisableTips;

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {v0}, Lcom/miui/home/settings/preference/ToastDisableTips;->showDisableTips()V

    :cond_0
    return-void
.end method
