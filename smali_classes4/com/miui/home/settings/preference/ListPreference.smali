.class public Lcom/miui/home/settings/preference/ListPreference;
.super Lmiuix/preference/DropDownPreference;
.source "ListPreference.java"

# interfaces
.implements Lcom/miui/home/settings/preference/DisableTips;


# instance fields
.field private mDisableTipsDelegate:Lcom/miui/home/settings/preference/DisableTipsDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lmiuix/preference/DropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    new-instance p1, Lcom/miui/home/settings/preference/DisableTipsDelegate;

    invoke-direct {p1}, Lcom/miui/home/settings/preference/DisableTipsDelegate;-><init>()V

    iput-object p1, p0, Lcom/miui/home/settings/preference/ListPreference;->mDisableTipsDelegate:Lcom/miui/home/settings/preference/DisableTipsDelegate;

    return-void
.end method


# virtual methods
.method public setDisableTips(I)V
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/miui/home/settings/preference/ListPreference;->mDisableTipsDelegate:Lcom/miui/home/settings/preference/DisableTipsDelegate;

    invoke-virtual {p0, p1}, Lcom/miui/home/settings/preference/DisableTipsDelegate;->setDisableTips(I)V

    return-void
.end method

.method public showDisableTips()V
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/miui/home/settings/preference/ListPreference;->mDisableTipsDelegate:Lcom/miui/home/settings/preference/DisableTipsDelegate;

    invoke-virtual {p0}, Lcom/miui/home/settings/preference/DisableTipsDelegate;->showDisableTips()V

    return-void
.end method
