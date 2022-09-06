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

    .line 33
    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private getCurIconStyle()Ljava/lang/String;
    .locals 5

    .line 121
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_1

    .line 122
    invoke-virtual {p0}, Lcom/miui/home/settings/IconCustomizeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.thememanager.theme_provider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    const-string v1, "getUsingIconInfo"

    const/4 v2, 0x0

    .line 125
    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    return-object v1

    :cond_0
    :try_start_1
    const-string v2, "iconTitle"

    .line 129
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "IconCustomizeFragment"

    .line 131
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 133
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_1

    :goto_0
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 134
    throw v1

    :cond_1
    :goto_1
    const-string v0, ""

    return-object v0
.end method

.method public static synthetic lambda$-xbwrg28drD_9t9CWFuCXK8ye9A(Lcom/miui/home/settings/IconCustomizeFragment;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/settings/IconCustomizeFragment;->getCurIconStyle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$onCreatePreferences$0(Lcom/miui/home/settings/IconCustomizeFragment;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 75
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/miui/home/settings/IconCustomizeFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIconStylePreference:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 77
    iget-object v0, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIconStylePreference:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {v0, p1}, Lcom/miui/home/settings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    const p1, 0x7f140014

    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/settings/IconCustomizeFragment;->setPreferencesFromResource(ILjava/lang/String;)V

    const-string p1, "key_icon_customize_preview"

    .line 51
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/IconCustomizeFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;

    iput-object p1, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mPreviewPreference:Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;

    .line 52
    iget-object p1, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mPreviewPreference:Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;

    if-eqz p1, :cond_0

    .line 53
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNoWordModel()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->setInNoWordMode(Z)V

    :cond_0
    const-string p1, "key_icon_style"

    .line 55
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/IconCustomizeFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/home/settings/preference/ValuePreference;

    iput-object p1, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIconStylePreference:Lcom/miui/home/settings/preference/ValuePreference;

    .line 56
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 57
    iget-object p1, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIconStylePreference:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {p1, p2}, Lcom/miui/home/settings/preference/ValuePreference;->setVisible(Z)V

    :cond_1
    const-string p1, "key_icon_scale"

    .line 59
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/IconCustomizeFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/home/settings/preference/IconCustomizeSaclePreference;

    iput-object p1, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIconSaclePrefernce:Lcom/miui/home/settings/preference/IconCustomizeSaclePreference;

    .line 60
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 61
    iget-object p1, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIconSaclePrefernce:Lcom/miui/home/settings/preference/IconCustomizeSaclePreference;

    invoke-virtual {p1, p2}, Lcom/miui/home/settings/preference/IconCustomizeSaclePreference;->setVisible(Z)V

    goto :goto_0

    .line 63
    :cond_2
    iget-object p1, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIconSaclePrefernce:Lcom/miui/home/settings/preference/IconCustomizeSaclePreference;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/home/settings/preference/IconCustomizeSaclePreference;->setVisible(Z)V

    .line 64
    :goto_0
    iget-object p1, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIconSaclePrefernce:Lcom/miui/home/settings/preference/IconCustomizeSaclePreference;

    new-instance p2, Lcom/miui/home/settings/-$$Lambda$0RY90J4tgUH2Q2rK8wyie9DVNII;

    invoke-direct {p2, p0}, Lcom/miui/home/settings/-$$Lambda$0RY90J4tgUH2Q2rK8wyie9DVNII;-><init>(Lcom/miui/home/settings/IconCustomizeFragment;)V

    invoke-virtual {p1, p2}, Lcom/miui/home/settings/preference/IconCustomizeSaclePreference;->setIconSizeChangeListener(Lcom/miui/home/settings/preference/IconCustomizeSaclePreference$IconSizeChangeListener;)V

    const-string p1, "theme://zhuti.xiaomi.com/transfer?path=componentLocal&category=Icon&custom=true&showButton=true&miref=home&miback=true"

    .line 65
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 66
    iget-object p2, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIconStylePreference:Lcom/miui/home/settings/preference/ValuePreference;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p2, v0}, Lcom/miui/home/settings/preference/ValuePreference;->setIntent(Landroid/content/Intent;)V

    .line 67
    iget-object p1, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIconStylePreference:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {p1, p0}, Lcom/miui/home/settings/preference/ValuePreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 68
    iget-object p1, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mPreviewPreference:Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;

    invoke-virtual {p1}, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->initPreviewApp()V

    .line 69
    iget-object p1, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mPreviewPreference:Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;

    invoke-virtual {p1}, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->initPreviewBackground()V

    .line 70
    invoke-virtual {p0}, Lcom/miui/home/settings/IconCustomizeFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIconStylePreference:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    .line 71
    new-instance p1, Lcom/miui/home/settings/-$$Lambda$IconCustomizeFragment$-xbwrg28drD_9t9CWFuCXK8ye9A;

    invoke-direct {p1, p0}, Lcom/miui/home/settings/-$$Lambda$IconCustomizeFragment$-xbwrg28drD_9t9CWFuCXK8ye9A;-><init>(Lcom/miui/home/settings/IconCustomizeFragment;)V

    invoke-static {p1}, Lio/reactivex2/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex2/Observable;

    move-result-object p1

    .line 72
    invoke-static {}, Lio/reactivex2/schedulers/Schedulers;->computation()Lio/reactivex2/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex2/Observable;->subscribeOn(Lio/reactivex2/Scheduler;)Lio/reactivex2/Observable;

    move-result-object p1

    .line 73
    invoke-static {}, Lio/reactivex2/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex2/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex2/Observable;->observeOn(Lio/reactivex2/Scheduler;)Lio/reactivex2/Observable;

    move-result-object p1

    new-instance p2, Lcom/miui/home/settings/-$$Lambda$IconCustomizeFragment$EQTL3L5WgSW7NeJFp30nlUKYN_o;

    invoke-direct {p2, p0}, Lcom/miui/home/settings/-$$Lambda$IconCustomizeFragment$EQTL3L5WgSW7NeJFp30nlUKYN_o;-><init>(Lcom/miui/home/settings/IconCustomizeFragment;)V

    .line 74
    invoke-virtual {p1, p2}, Lio/reactivex2/Observable;->subscribe(Lio/reactivex2/functions/Consumer;)Lio/reactivex2/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIconStyleDisposable:Lio/reactivex2/disposables/Disposable;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 97
    invoke-super {p0}, Lmiuix/preference/PreferenceFragment;->onDestroy()V

    .line 98
    iget-object v0, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIconStyleDisposable:Lio/reactivex2/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex2/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIconStyleDisposable:Lio/reactivex2/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex2/disposables/Disposable;->dispose()V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mPreviewPreference:Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;

    invoke-virtual {v0}, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->onDestroyView()V

    return-void
.end method

.method public onIconSizeChange(Ljava/lang/Float;)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mPreviewPreference:Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->onIconScaleChange(F)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 106
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    .line 107
    invoke-virtual {p0}, Lcom/miui/home/settings/IconCustomizeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/miui/home/settings/IconCustomizeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 112
    :cond_1
    invoke-super {p0, p1}, Lmiuix/preference/PreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 3

    .line 84
    invoke-super {p0}, Lmiuix/preference/PreferenceFragment;->onPause()V

    .line 85
    iget-object v0, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIconSaclePrefernce:Lcom/miui/home/settings/preference/IconCustomizeSaclePreference;

    invoke-virtual {v0}, Lcom/miui/home/settings/preference/IconCustomizeSaclePreference;->getCurrentSetIconSizeValue()Ljava/lang/Float;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "IconCustomizeFragment"

    const-string v1, "getCurrentSetIconSizeValue null"

    .line 86
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIconSaclePrefernce:Lcom/miui/home/settings/preference/IconCustomizeSaclePreference;

    invoke-virtual {v0}, Lcom/miui/home/settings/preference/IconCustomizeSaclePreference;->getCurrentSetIconSizeValue()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 90
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->setIconSizeScale(F)V

    .line 91
    invoke-static {}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getInstance()Lcom/miui/home/launcher/common/LauncherIconSizeProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->enableAndResetCache()V

    .line 92
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/common/messages/IconSizeChangeMessage;

    invoke-direct {v2, v0}, Lcom/miui/home/launcher/common/messages/IconSizeChangeMessage;-><init>(F)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    .line 142
    invoke-static {}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackClickIconStyleItem()V

    const/4 p1, 0x0

    return p1
.end method
