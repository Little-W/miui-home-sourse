.class public final synthetic Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$wVzdv66l-D9Pj0HpAzTbL4rgE5g;
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

    iput-object p1, p0, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$wVzdv66l-D9Pj0HpAzTbL4rgE5g;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$wVzdv66l-D9Pj0HpAzTbL4rgE5g;->f$0:Ljava/lang/Runnable;

    invoke-static {v0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->lambda$initClickPreference$557(Ljava/lang/Runnable;Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method
