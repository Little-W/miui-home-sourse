.class public final Lcom/miui/home/launcher/backup/settings/BackupSettingsNoWord;
.super Lcom/miui/home/launcher/backup/settings/BackupSettingsBase$BackupSettingsBaseBoolean;
.source "BackupSettingsNoWord.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBackupSettingsNoWord.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BackupSettingsNoWord.kt\ncom/miui/home/launcher/backup/settings/BackupSettingsNoWord\n*L\n1#1,31:1\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "miui_home_no_word_model"

    .line 11
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/backup/settings/BackupSettingsBase$BackupSettingsBaseBoolean;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getSettingsValue()Ljava/lang/Boolean;
    .locals 3

    .line 14
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string v1, "Application.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "miui_home_no_word_model"

    const/4 v2, 0x0

    .line 13
    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSettingsValue()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/miui/home/launcher/backup/settings/BackupSettingsNoWord;->getSettingsValue()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected putSettingsValue(Ljava/lang/Boolean;)V
    .locals 2

    .line 20
    invoke-static {}, Lcom/miui/home/launcher/util/noword/NoWordSettingHelperKt;->isNoWordAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 25
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string v1, "Application.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "miui_home_no_word_model"

    .line 27
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 24
    invoke-static {v0, v1, p1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putBooleanToSystem(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    :cond_1
    return-void
.end method

.method public bridge synthetic putSettingsValue(Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/backup/settings/BackupSettingsNoWord;->putSettingsValue(Ljava/lang/Boolean;)V

    return-void
.end method
