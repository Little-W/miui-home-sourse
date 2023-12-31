.class public final synthetic Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$g7bzjzTNpqkv-_rmU6L6Nb5axa8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Landroidx/preference/CheckBoxPreference;


# direct methods
.method public synthetic constructor <init>(Landroidx/preference/CheckBoxPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$g7bzjzTNpqkv-_rmU6L6Nb5axa8;->f$0:Landroidx/preference/CheckBoxPreference;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$g7bzjzTNpqkv-_rmU6L6Nb5axa8;->f$0:Landroidx/preference/CheckBoxPreference;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->lambda$asyncSetCheckboxPreferenceCheckedStatus$21(Landroidx/preference/CheckBoxPreference;Ljava/lang/Boolean;)V

    return-void
.end method
