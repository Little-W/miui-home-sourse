.class public Lcom/miui/home/settings/IconCustomizeFragment;
.super Lmiuix/preference/PreferenceFragment;
.source "IconCustomizeFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Lcom/miui/home/settings/preference/IconCustomizeSaclePreference$IconSizeChangeListener;


# instance fields
.field private mIconSaclePrefernce:Lcom/miui/home/settings/preference/IconCustomizeSaclePreference;

.field private mIconStyleDisposable:Lio/reactivex2/disposables/Disposable;

.field private mIconStylePreference:Lcom/miui/home/settings/preference/ValuePreference;

.field private mPreviewPreference:Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private getCurIconStyle()Ljava/lang/String;
    .locals 4

    .line 106
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    .line 108
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/home/settings/IconCustomizeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.thememanager.theme_provider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "getUsingIconInfo"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "iconTitle"

    .line 109
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "IconCustomizeFragment"

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static synthetic lambda$-xbwrg28drD_9t9CWFuCXK8ye9A(Lcom/miui/home/settings/IconCustomizeFragment;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/settings/IconCustomizeFragment;->getCurIconStyle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$onCreatePreferences$501(Lcom/miui/home/settings/IconCustomizeFragment;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 60
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/miui/home/settings/IconCustomizeFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIconStylePreference:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 62
    iget-object v0, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIconStylePreference:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {v0, p1}, Lcom/miui/home/settings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    const p1, 0x7f130011

    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/settings/IconCustomizeFragment;->setPreferencesFromResource(ILjava/lang/String;)V

    const-string p1, "key_icon_customize_preview"

    .line 46
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/IconCustomizeFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;

    iput-object p1, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mPreviewPreference:Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;

    const-string p1, "key_icon_style"

    .line 47
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/IconCustomizeFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/home/settings/preference/ValuePreference;

    iput-object p1, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIconStylePreference:Lcom/miui/home/settings/preference/ValuePreference;

    const-string p1, "key_icon_scale"

    .line 48
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/IconCustomizeFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/home/settings/preference/IconCustomizeSaclePreference;

    iput-object p1, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIconSaclePrefernce:Lcom/miui/home/settings/preference/IconCustomizeSaclePreference;

    .line 49
    iget-object p1, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIconSaclePrefernce:Lcom/miui/home/settings/preference/IconCustomizeSaclePreference;

    new-instance p2, Lcom/miui/home/settings/-$$Lambda$0RY90J4tgUH2Q2rK8wyie9DVNII;

    invoke-direct {p2, p0}, Lcom/miui/home/settings/-$$Lambda$0RY90J4tgUH2Q2rK8wyie9DVNII;-><init>(Lcom/miui/home/settings/IconCustomizeFragment;)V

    invoke-virtual {p1, p2}, Lcom/miui/home/settings/preference/IconCustomizeSaclePreference;->setIconSizeChangeListener(Lcom/miui/home/settings/preference/IconCustomizeSaclePreference$IconSizeChangeListener;)V

    const-string p1, "theme://zhuti.xiaomi.com/transfer?path=componentLocal&category=Icon&custom=true&showButton=true&miref=home&miback=true"

    .line 50
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 51
    iget-object p2, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIconStylePreference:Lcom/miui/home/settings/preference/ValuePreference;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p2, v0}, Lcom/miui/home/settings/preference/ValuePreference;->setIntent(Landroid/content/Intent;)V

    .line 52
    iget-object p1, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIconStylePreference:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {p1, p0}, Lcom/miui/home/settings/preference/ValuePreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 53
    iget-object p1, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mPreviewPreference:Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;

    invoke-virtual {p1}, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->initPreviewApp()V

    .line 54
    iget-object p1, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mPreviewPreference:Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;

    invoke-virtual {p1}, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->initPreviewBackground()V

    .line 55
    invoke-virtual {p0}, Lcom/miui/home/settings/IconCustomizeFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIconStylePreference:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    .line 56
    new-instance p1, Lcom/miui/home/settings/-$$Lambda$IconCustomizeFragment$-xbwrg28drD_9t9CWFuCXK8ye9A;

    invoke-direct {p1, p0}, Lcom/miui/home/settings/-$$Lambda$IconCustomizeFragment$-xbwrg28drD_9t9CWFuCXK8ye9A;-><init>(Lcom/miui/home/settings/IconCustomizeFragment;)V

    invoke-static {p1}, Lio/reactivex2/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex2/Observable;

    move-result-object p1

    .line 57
    invoke-static {}, Lio/reactivex2/schedulers/Schedulers;->computation()Lio/reactivex2/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex2/Observable;->subscribeOn(Lio/reactivex2/Scheduler;)Lio/reactivex2/Observable;

    move-result-object p1

    .line 58
    invoke-static {}, Lio/reactivex2/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex2/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex2/Observable;->observeOn(Lio/reactivex2/Scheduler;)Lio/reactivex2/Observable;

    move-result-object p1

    new-instance p2, Lcom/miui/home/settings/-$$Lambda$IconCustomizeFragment$Ob3R1sHYmcTYmLm0nNEcdC8e2xE;

    invoke-direct {p2, p0}, Lcom/miui/home/settings/-$$Lambda$IconCustomizeFragment$Ob3R1sHYmcTYmLm0nNEcdC8e2xE;-><init>(Lcom/miui/home/settings/IconCustomizeFragment;)V

    .line 59
    invoke-virtual {p1, p2}, Lio/reactivex2/Observable;->subscribe(Lio/reactivex2/functions/Consumer;)Lio/reactivex2/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIconStyleDisposable:Lio/reactivex2/disposables/Disposable;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 82
    invoke-super {p0}, Lmiuix/preference/PreferenceFragment;->onDestroy()V

    .line 83
    iget-object v0, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIconStyleDisposable:Lio/reactivex2/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex2/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIconStyleDisposable:Lio/reactivex2/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex2/disposables/Disposable;->dispose()V

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mPreviewPreference:Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;

    invoke-virtual {v0}, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->onDestroyView()V

    return-void
.end method

.method public onIconSizeChange(Ljava/lang/Float;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mPreviewPreference:Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->onIconScaleChange(F)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 91
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    .line 92
    invoke-virtual {p0}, Lcom/miui/home/settings/IconCustomizeFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/miui/home/settings/IconCustomizeFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 97
    :cond_1
    invoke-super {p0, p1}, Lmiuix/preference/PreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    .line 121
    invoke-static {}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackClickIconStyleItem()V

    const/4 p1, 0x0

    return p1
.end method

.method public onStop()V
    .locals 3

    .line 69
    invoke-super {p0}, Lmiuix/preference/PreferenceFragment;->onStop()V

    .line 70
    iget-object v0, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIconSaclePrefernce:Lcom/miui/home/settings/preference/IconCustomizeSaclePreference;

    invoke-virtual {v0}, Lcom/miui/home/settings/preference/IconCustomizeSaclePreference;->getCurrentSetIconSizeValue()Ljava/lang/Float;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "IconCustomizeFragment"

    const-string v1, "getCurrentSetIconSizeValue null"

    .line 71
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIconSaclePrefernce:Lcom/miui/home/settings/preference/IconCustomizeSaclePreference;

    invoke-virtual {v0}, Lcom/miui/home/settings/preference/IconCustomizeSaclePreference;->getCurrentSetIconSizeValue()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 75
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->setIconSizeScale(F)V

    .line 76
    invoke-static {}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getInstance()Lcom/miui/home/launcher/common/LauncherIconSizeProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->enableAndResetCache()V

    .line 77
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/common/messages/IconSizeChangeMessage;

    invoke-direct {v2, v0}, Lcom/miui/home/launcher/common/messages/IconSizeChangeMessage;-><init>(F)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
