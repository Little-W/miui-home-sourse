.class public Lcom/miui/home/settings/IconCustomizeFragment;
.super Lmiuix/preference/PreferenceFragment;
.source "IconCustomizeFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Lcom/miui/home/settings/preference/IconCustomizeSaclePreference$IconSizeChangeListener;


# instance fields
.field private mIconSaclePrefernce:Lcom/miui/home/settings/preference/IconCustomizeSaclePreference;

.field private mIconStyleDisposable:Lio/reactivex2/disposables/Disposable;

.field private mIconStylePreference:Lcom/miui/home/settings/preference/ValuePreference;

.field private mMonoPreference:Lcom/miui/home/settings/preference/ListPreference;

.field private mPreviewPreference:Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private getCurIconStyle()Ljava/lang/String;
    .locals 5

    .line 168
    sget-boolean v0, Lmiuix/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const-string v1, ""

    if-nez v0, :cond_1

    .line 169
    invoke-virtual {p0}, Lcom/miui/home/settings/IconCustomizeFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "content://com.android.thememanager.theme_provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0

    if-eqz p0, :cond_1

    :try_start_0
    const-string v0, "getUsingIconInfo"

    const/4 v2, 0x0

    .line 172
    invoke-virtual {p0, v0, v2, v2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 180
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z

    return-object v1

    :cond_0
    :try_start_1
    const-string v2, "iconTitle"

    .line 176
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "IconCustomizeFragment"

    .line 178
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 180
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z

    .line 181
    throw v0

    :cond_1
    :goto_1
    return-object v1
.end method

.method private getMonoChromeColorValues()[Ljava/lang/String;
    .locals 6

    .line 116
    invoke-virtual {p0}, Lcom/miui/home/settings/IconCustomizeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060523

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 117
    invoke-virtual {p0}, Lcom/miui/home/settings/IconCustomizeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060521

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 118
    invoke-virtual {p0}, Lcom/miui/home/settings/IconCustomizeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060524

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 119
    invoke-virtual {p0}, Lcom/miui/home/settings/IconCustomizeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060525

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 120
    invoke-virtual {p0}, Lcom/miui/home/settings/IconCustomizeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v4, 0x7f060522

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    .line 121
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    aput-object v0, v4, v5

    .line 122
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v4, v1

    .line 123
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v4, v1

    .line 124
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, v4, v1

    .line 125
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x4

    aput-object p0, v4, v0

    return-object v4
.end method

.method public static synthetic lambda$-xbwrg28drD_9t9CWFuCXK8ye9A(Lcom/miui/home/settings/IconCustomizeFragment;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/settings/IconCustomizeFragment;->getCurIconStyle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private setUpMonoPreference()V
    .locals 4

    .line 91
    invoke-static {}, Lcom/miui/home/launcher/graphics/MonochromeUtils;->isSupportMonochrome()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 92
    iget-object p0, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mMonoPreference:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {p0, v1}, Lcom/miui/home/settings/preference/ListPreference;->setVisible(Z)V

    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mMonoPreference:Lcom/miui/home/settings/preference/ListPreference;

    const v2, 0x7f030017

    invoke-virtual {v0, v2}, Lcom/miui/home/settings/preference/ListPreference;->setEntries(I)V

    .line 97
    invoke-direct {p0}, Lcom/miui/home/settings/IconCustomizeFragment;->getMonoChromeColorValues()[Ljava/lang/String;

    move-result-object v0

    .line 98
    iget-object v2, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mMonoPreference:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {v2, v0}, Lcom/miui/home/settings/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 100
    invoke-virtual {p0}, Lcom/miui/home/settings/IconCustomizeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "key_monochrome_color"

    invoke-static {v2, v3}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getStringFromSystem(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 102
    aget-object v2, v0, v1

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mMonoPreference:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {v0, v2}, Lcom/miui/home/settings/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mMonoPreference:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {v0, p0}, Lcom/miui/home/settings/preference/ListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 107
    fill-array-data v0, :array_0

    .line 112
    iget-object p0, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mMonoPreference:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {p0, v0}, Lcom/miui/home/settings/preference/ListPreference;->setEntryIcons([I)V

    return-void

    :array_0
    .array-data 4
        0x7f08064a
        0x7f0802b5
        0x7f0802b7
        0x7f0802b8
        0x7f0802b6
    .end array-data
.end method


# virtual methods
.method public synthetic lambda$onCreatePreferences$0$IconCustomizeFragment(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 79
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/miui/home/settings/IconCustomizeFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIconStylePreference:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 81
    iget-object p0, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIconStylePreference:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {p0, p1}, Lcom/miui/home/settings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    const p1, 0x7f140017

    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/settings/IconCustomizeFragment;->setPreferencesFromResource(ILjava/lang/String;)V

    const-string p1, "key_icon_customize_preview"

    .line 57
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/IconCustomizeFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;

    iput-object p1, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mPreviewPreference:Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;

    .line 58
    iget-object p1, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mPreviewPreference:Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;

    if-eqz p1, :cond_0

    .line 59
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNoWordModel()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->setInNoWordMode(Z)V

    :cond_0
    const-string p1, "key_icon_style"

    .line 61
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/IconCustomizeFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/home/settings/preference/ValuePreference;

    iput-object p1, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIconStylePreference:Lcom/miui/home/settings/preference/ValuePreference;

    .line 62
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 63
    iget-object p1, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIconStylePreference:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {p1, p2}, Lcom/miui/home/settings/preference/ValuePreference;->setVisible(Z)V

    :cond_1
    const-string p1, "key_icon_scale"

    .line 65
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/IconCustomizeFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/home/settings/preference/IconCustomizeSaclePreference;

    iput-object p1, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIconSaclePrefernce:Lcom/miui/home/settings/preference/IconCustomizeSaclePreference;

    .line 66
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 67
    iget-object p1, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIconSaclePrefernce:Lcom/miui/home/settings/preference/IconCustomizeSaclePreference;

    invoke-virtual {p1, p2}, Lcom/miui/home/settings/preference/IconCustomizeSaclePreference;->setVisible(Z)V

    goto :goto_0

    .line 69
    :cond_2
    iget-object p1, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIconSaclePrefernce:Lcom/miui/home/settings/preference/IconCustomizeSaclePreference;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/home/settings/preference/IconCustomizeSaclePreference;->setVisible(Z)V

    .line 70
    :goto_0
    iget-object p1, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIconSaclePrefernce:Lcom/miui/home/settings/preference/IconCustomizeSaclePreference;

    new-instance p2, Lcom/miui/home/settings/-$$Lambda$0RY90J4tgUH2Q2rK8wyie9DVNII;

    invoke-direct {p2, p0}, Lcom/miui/home/settings/-$$Lambda$0RY90J4tgUH2Q2rK8wyie9DVNII;-><init>(Lcom/miui/home/settings/IconCustomizeFragment;)V

    invoke-virtual {p1, p2}, Lcom/miui/home/settings/preference/IconCustomizeSaclePreference;->setIconSizeChangeListener(Lcom/miui/home/settings/preference/IconCustomizeSaclePreference$IconSizeChangeListener;)V

    .line 71
    iget-object p1, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIconStylePreference:Lcom/miui/home/settings/preference/ValuePreference;

    new-instance p2, Landroid/content/Intent;

    sget-object v0, Lcom/miui/home/settings/MiuiHomeSettings;->ICON_URI:Landroid/net/Uri;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p2, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, p2}, Lcom/miui/home/settings/preference/ValuePreference;->setIntent(Landroid/content/Intent;)V

    .line 72
    iget-object p1, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIconStylePreference:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {p1, p0}, Lcom/miui/home/settings/preference/ValuePreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 73
    iget-object p1, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mPreviewPreference:Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;

    invoke-virtual {p1}, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->initPreviewApp()V

    .line 74
    iget-object p1, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mPreviewPreference:Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;

    invoke-virtual {p1}, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->initPreviewBackground()V

    .line 75
    invoke-virtual {p0}, Lcom/miui/home/settings/IconCustomizeFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIconStylePreference:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    .line 76
    new-instance p1, Lcom/miui/home/settings/-$$Lambda$IconCustomizeFragment$-xbwrg28drD_9t9CWFuCXK8ye9A;

    invoke-direct {p1, p0}, Lcom/miui/home/settings/-$$Lambda$IconCustomizeFragment$-xbwrg28drD_9t9CWFuCXK8ye9A;-><init>(Lcom/miui/home/settings/IconCustomizeFragment;)V

    invoke-static {p1}, Lio/reactivex2/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex2/Observable;

    move-result-object p1

    .line 77
    invoke-static {}, Lio/reactivex2/schedulers/Schedulers;->computation()Lio/reactivex2/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex2/Observable;->subscribeOn(Lio/reactivex2/Scheduler;)Lio/reactivex2/Observable;

    move-result-object p1

    .line 78
    invoke-static {}, Lio/reactivex2/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex2/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex2/Observable;->observeOn(Lio/reactivex2/Scheduler;)Lio/reactivex2/Observable;

    move-result-object p1

    new-instance p2, Lcom/miui/home/settings/-$$Lambda$IconCustomizeFragment$EQTL3L5WgSW7NeJFp30nlUKYN_o;

    invoke-direct {p2, p0}, Lcom/miui/home/settings/-$$Lambda$IconCustomizeFragment$EQTL3L5WgSW7NeJFp30nlUKYN_o;-><init>(Lcom/miui/home/settings/IconCustomizeFragment;)V

    const-string v0, "IconCustomizeFragment onCreatePreferences"

    .line 76
    invoke-static {p1, p2, v0}, Lcom/miui/home/launcher/common/Utilities;->subscribeToObservable(Lio/reactivex2/Observable;Lio/reactivex2/functions/Consumer;Ljava/lang/String;)Lio/reactivex2/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIconStyleDisposable:Lio/reactivex2/disposables/Disposable;

    const-string p1, "key_monochrome"

    .line 85
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/IconCustomizeFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/home/settings/preference/ListPreference;

    iput-object p1, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mMonoPreference:Lcom/miui/home/settings/preference/ListPreference;

    .line 86
    invoke-direct {p0}, Lcom/miui/home/settings/IconCustomizeFragment;->setUpMonoPreference()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 144
    invoke-super {p0}, Lmiuix/preference/PreferenceFragment;->onDestroy()V

    .line 145
    iget-object v0, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIconStyleDisposable:Lio/reactivex2/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex2/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIconStyleDisposable:Lio/reactivex2/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex2/disposables/Disposable;->dispose()V

    .line 148
    :cond_0
    iget-object p0, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mPreviewPreference:Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;

    invoke-virtual {p0}, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->onDestroyView()V

    return-void
.end method

.method public onIconSizeChange(Ljava/lang/Float;)V
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mPreviewPreference:Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->onIconScaleChange(F)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 153
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    .line 154
    invoke-virtual {p0}, Lcom/miui/home/settings/IconCustomizeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/miui/home/settings/IconCustomizeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 159
    :cond_1
    invoke-super {p0, p1}, Lmiuix/preference/PreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 2

    .line 131
    invoke-super {p0}, Lmiuix/preference/PreferenceFragment;->onPause()V

    .line 132
    iget-object v0, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIconSaclePrefernce:Lcom/miui/home/settings/preference/IconCustomizeSaclePreference;

    invoke-virtual {v0}, Lcom/miui/home/settings/preference/IconCustomizeSaclePreference;->getCurrentSetIconSizeValue()Ljava/lang/Float;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "IconCustomizeFragment"

    const-string v0, "getCurrentSetIconSizeValue null"

    .line 133
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 136
    :cond_0
    iget-object p0, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIconSaclePrefernce:Lcom/miui/home/settings/preference/IconCustomizeSaclePreference;

    invoke-virtual {p0}, Lcom/miui/home/settings/preference/IconCustomizeSaclePreference;->getCurrentSetIconSizeValue()Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    .line 137
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/common/PreferenceUtils;->setIconSizeScale(F)V

    .line 138
    invoke-static {}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getInstance()Lcom/miui/home/launcher/common/LauncherIconSizeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->enableAndResetCache()V

    .line 139
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/IconSizeChangeMessage;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/common/messages/IconSizeChangeMessage;-><init>(F)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 195
    invoke-virtual {p0}, Lcom/miui/home/settings/IconCustomizeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 196
    iget-object p0, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mMonoPreference:Lcom/miui/home/settings/preference/ListPreference;

    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    .line 197
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string p2, "key_monochrome"

    .line 199
    invoke-static {v0, p2, p1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putBooleanToSystem(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    const-string p2, "key_monochrome_color"

    .line 200
    invoke-static {v0, p2, p0}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putIntToSystem(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 201
    invoke-static {p1}, Lcom/miui/home/launcher/graphics/MonochromeUtils;->setMonoEnable(Z)V

    .line 202
    invoke-static {p0}, Lcom/miui/home/launcher/graphics/MonochromeUtils;->setCurrentColor(I)V

    :cond_1
    return v1
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    .line 189
    invoke-static {}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackClickIconStyleItem()V

    const/4 p0, 0x0

    return p0
.end method
