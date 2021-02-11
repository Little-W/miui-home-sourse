.class public Lcom/miui/home/settings/preference/CheckBoxPreference;
.super Landroidx/preference/CheckBoxPreference;
.source "CheckBoxPreference.java"

# interfaces
.implements Lcom/miui/home/settings/preference/DisableTips;


# instance fields
.field private mToastTips:Lcom/miui/home/settings/preference/ToastDisableTips;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public showDisableTips()V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/miui/home/settings/preference/CheckBoxPreference;->mToastTips:Lcom/miui/home/settings/preference/ToastDisableTips;

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {v0}, Lcom/miui/home/settings/preference/ToastDisableTips;->showDisableTips()V

    :cond_0
    return-void
.end method
