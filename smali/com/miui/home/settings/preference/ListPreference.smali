.class public Lcom/miui/home/settings/preference/ListPreference;
.super Landroidx/preference/ListPreference;
.source "ListPreference.java"

# interfaces
.implements Lcom/miui/home/settings/preference/DisableTips;


# instance fields
.field private mDisableTipsDelegate:Lcom/miui/home/settings/preference/DisableTipsDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    new-instance p1, Lcom/miui/home/settings/preference/DisableTipsDelegate;

    invoke-direct {p1}, Lcom/miui/home/settings/preference/DisableTipsDelegate;-><init>()V

    iput-object p1, p0, Lcom/miui/home/settings/preference/ListPreference;->mDisableTipsDelegate:Lcom/miui/home/settings/preference/DisableTipsDelegate;

    return-void
.end method


# virtual methods
.method public setDisableTips(I)V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/miui/home/settings/preference/ListPreference;->mDisableTipsDelegate:Lcom/miui/home/settings/preference/DisableTipsDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/home/settings/preference/DisableTipsDelegate;->setDisableTips(I)V

    return-void
.end method

.method public showDisableTips()V
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/miui/home/settings/preference/ListPreference;->mDisableTipsDelegate:Lcom/miui/home/settings/preference/DisableTipsDelegate;

    invoke-virtual {v0}, Lcom/miui/home/settings/preference/DisableTipsDelegate;->showDisableTips()V

    return-void
.end method
