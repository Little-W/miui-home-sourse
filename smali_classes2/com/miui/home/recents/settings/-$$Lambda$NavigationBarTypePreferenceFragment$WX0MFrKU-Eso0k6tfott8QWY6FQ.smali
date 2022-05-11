.class public final synthetic Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$WX0MFrKU-Eso0k6tfott8QWY6FQ;
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

    iput-object p1, p0, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$WX0MFrKU-Eso0k6tfott8QWY6FQ;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$WX0MFrKU-Eso0k6tfott8QWY6FQ;->f$0:Ljava/lang/Runnable;

    invoke-static {v0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->lambda$initClickPreference$10(Ljava/lang/Runnable;Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method
