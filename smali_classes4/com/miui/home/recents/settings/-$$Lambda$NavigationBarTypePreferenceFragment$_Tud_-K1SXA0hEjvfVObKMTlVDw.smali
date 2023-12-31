.class public final synthetic Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$_Tud_-K1SXA0hEjvfVObKMTlVDw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$_Tud_-K1SXA0hEjvfVObKMTlVDw;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    iget-object p0, p0, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$_Tud_-K1SXA0hEjvfVObKMTlVDw;->f$0:Ljava/lang/Runnable;

    invoke-static {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->lambda$initClickPreference$11(Ljava/lang/Runnable;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
