.class public Landroidx/preference/XMiuiPreferenceHelper;
.super Ljava/lang/Object;


# static fields
.field public static final ANDROID_RESOURCE_TAG:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAttr:Landroid/util/AttributeSet;

.field private mContext:Landroid/content/Context;

.field mIntent:Ljava/lang/String;

.field mKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroidx/preference/XMiuiPreferenceHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/preference/XMiuiPreferenceHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Landroidx/preference/XMiuiPreferenceHelper;->mIntent:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroidx/preference/XMiuiPreferenceHelper;->mKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/XMiuiPreferenceHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroidx/preference/XMiuiPreferenceHelper;->mAttr:Landroid/util/AttributeSet;

    invoke-direct {p0}, Landroidx/preference/XMiuiPreferenceHelper;->init()V

    return-void
.end method

.method public static getTAG(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 1

    iget-object v0, p0, Landroidx/preference/XMiuiPreferenceHelper;->mAttr:Landroid/util/AttributeSet;

    if-eqz v0, :cond_0

    const-string v0, "key"

    invoke-virtual {p0, v0}, Landroidx/preference/XMiuiPreferenceHelper;->getAttributeAndroidValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/XMiuiPreferenceHelper;->mKey:Ljava/lang/String;

    const-string v0, "intent"

    invoke-virtual {p0, v0}, Landroidx/preference/XMiuiPreferenceHelper;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/XMiuiPreferenceHelper;->mIntent:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method static isValidateKey(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    const/4 v4, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    :try_start_0
    invoke-static {v3, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return v4

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v3, p1}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_2
    invoke-static {v3, p1}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v2

    invoke-static {v3, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method getAttributeAndroidBool(Ljava/lang/String;Z)Z
    .locals 2

    iget-object v0, p0, Landroidx/preference/XMiuiPreferenceHelper;->mAttr:Landroid/util/AttributeSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/preference/XMiuiPreferenceHelper;->mAttr:Landroid/util/AttributeSet;

    const-string v1, "http://schemas.android.com/apk/res/android"

    invoke-interface {v0, v1, p1, p2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    :cond_0
    return p2
.end method

.method getAttributeAndroidInt(Ljava/lang/String;I)I
    .locals 2

    iget-object v0, p0, Landroidx/preference/XMiuiPreferenceHelper;->mAttr:Landroid/util/AttributeSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/preference/XMiuiPreferenceHelper;->mAttr:Landroid/util/AttributeSet;

    const-string v1, "http://schemas.android.com/apk/res/android"

    invoke-interface {v0, v1, p1, p2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p2

    :cond_0
    return p2
.end method

.method getAttributeAndroidValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroidx/preference/XMiuiPreferenceHelper;->mAttr:Landroid/util/AttributeSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/preference/XMiuiPreferenceHelper;->mAttr:Landroid/util/AttributeSet;

    const-string v1, "http://schemas.android.com/apk/res/android"

    invoke-interface {v0, v1, p1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method getAttributeBool(Ljava/lang/String;Z)Z
    .locals 2

    iget-object v0, p0, Landroidx/preference/XMiuiPreferenceHelper;->mAttr:Landroid/util/AttributeSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/preference/XMiuiPreferenceHelper;->mAttr:Landroid/util/AttributeSet;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    :cond_0
    return p2
.end method

.method getAttributeInt(Ljava/lang/String;I)I
    .locals 2

    iget-object v0, p0, Landroidx/preference/XMiuiPreferenceHelper;->mAttr:Landroid/util/AttributeSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/preference/XMiuiPreferenceHelper;->mAttr:Landroid/util/AttributeSet;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p2

    :cond_0
    return p2
.end method

.method getAttributeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroidx/preference/XMiuiPreferenceHelper;->mAttr:Landroid/util/AttributeSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/preference/XMiuiPreferenceHelper;->mAttr:Landroid/util/AttributeSet;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method getBool()Z
    .locals 1

    iget-object v0, p0, Landroidx/preference/XMiuiPreferenceHelper;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/preference/SettingsHelper;->getBoolofSettings(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method getBool(I)Z
    .locals 1

    iget-object v0, p0, Landroidx/preference/XMiuiPreferenceHelper;->mKey:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/preference/SettingsHelper;->getBoolofSettings(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method getBool(Ljava/lang/String;)Z
    .locals 2

    iget-object v1, p0, Landroidx/preference/XMiuiPreferenceHelper;->mKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/preference/SettingsHelper;->getStringofSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getBool(Z)Z
    .locals 2

    iget-object v1, p0, Landroidx/preference/XMiuiPreferenceHelper;->mKey:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Landroid/preference/SettingsHelper;->getBoolofSettings(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getInt()I
    .locals 1

    iget-object v0, p0, Landroidx/preference/XMiuiPreferenceHelper;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/preference/SettingsHelper;->getIntofSettings(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method getInt(I)I
    .locals 1

    iget-object v0, p0, Landroidx/preference/XMiuiPreferenceHelper;->mKey:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/preference/SettingsHelper;->getIntofSettings(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method getStr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/preference/XMiuiPreferenceHelper;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/preference/SettingsHelper;->getStringofSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/preference/XMiuiPreferenceHelper;->mKey:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/preference/SettingsHelper;->getStringofSettings(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method isValidateKey()Z
    .locals 6

    const/4 v4, 0x1

    iget-object v5, p0, Landroidx/preference/XMiuiPreferenceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    :try_start_0
    iget-object v5, p0, Landroidx/preference/XMiuiPreferenceHelper;->mKey:Ljava/lang/String;

    invoke-static {v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return v4

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v5, p0, Landroidx/preference/XMiuiPreferenceHelper;->mKey:Ljava/lang/String;

    invoke-static {v3, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_2
    iget-object v5, p0, Landroidx/preference/XMiuiPreferenceHelper;->mKey:Ljava/lang/String;

    invoke-static {v3, v5}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v2

    iget-object v5, p0, Landroidx/preference/XMiuiPreferenceHelper;->mKey:Ljava/lang/String;

    invoke-static {v3, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    const/4 v4, 0x0

    goto :goto_0
.end method

.method putInt(I)V
    .locals 1

    iget-object v0, p0, Landroidx/preference/XMiuiPreferenceHelper;->mKey:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/preference/SettingsHelper;->putIntinSettings(Ljava/lang/String;I)V

    return-void
.end method

.method putStr(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroidx/preference/XMiuiPreferenceHelper;->mKey:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/preference/SettingsHelper;->putStringinSettings(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method sendIntent()V
    .locals 3

    sget-object v0, Landroidx/preference/XMiuiPreferenceHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendIntent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/preference/XMiuiPreferenceHelper;->mIntent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroidx/preference/XMiuiPreferenceHelper;->mIntent:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/preference/XMiuiPreferenceHelper;->mIntent:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/preference/XMiuiPreferenceHelper;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Landroidx/preference/XMiuiPreferenceHelper;->mIntent:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method setInt(I)V
    .locals 1

    iget-object v0, p0, Landroidx/preference/XMiuiPreferenceHelper;->mKey:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/preference/SettingsHelper;->putIntinSettings(Ljava/lang/String;I)V

    return-void
.end method
