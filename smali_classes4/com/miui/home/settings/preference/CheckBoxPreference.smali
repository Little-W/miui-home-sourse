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
.method public callChangeListener(Ljava/lang/Object;)Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/miui/home/settings/preference/CheckBoxPreference;->isSwitchAble:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 48
    :cond_0
    invoke-super {p0, p1}, Landroidx/preference/CheckBoxPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public performClick()V
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/miui/home/settings/preference/CheckBoxPreference;->isSwitchAble:Z

    if-eqz v0, :cond_0

    .line 55
    invoke-super {p0}, Landroidx/preference/CheckBoxPreference;->performClick()V

    :cond_0
    return-void
.end method

.method public showDisableTips()V
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/miui/home/settings/preference/CheckBoxPreference;->mToastTips:Lcom/miui/home/settings/preference/ToastDisableTips;

    if-eqz p0, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/miui/home/settings/preference/ToastDisableTips;->showDisableTips()V

    :cond_0
    return-void
.end method
