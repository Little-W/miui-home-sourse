.class Lcom/miui/home/launcher/LauncherSettings$Settings;
.super Ljava/lang/Object;
.source "LauncherSettings.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/LauncherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Settings"
.end annotation


# static fields
.field private static final SYSTEM_SETTINGS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 529
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/LauncherSettings$Settings;->SYSTEM_SETTINGS:Ljava/util/HashSet;

    .line 530
    sget-object v0, Lcom/miui/home/launcher/LauncherSettings$Settings;->SYSTEM_SETTINGS:Ljava/util/HashSet;

    const-string v1, "key_home_screen_search_bar"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 531
    sget-object v0, Lcom/miui/home/launcher/LauncherSettings$Settings;->SYSTEM_SETTINGS:Ljava/util/HashSet;

    const-string v1, "key_home_screen_search_bar_source"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 532
    sget-object v0, Lcom/miui/home/launcher/LauncherSettings$Settings;->SYSTEM_SETTINGS:Ljava/util/HashSet;

    const-string v1, "key_home_screen_search_bar_long_press_action"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 533
    sget-object v0, Lcom/miui/home/launcher/LauncherSettings$Settings;->SYSTEM_SETTINGS:Ljava/util/HashSet;

    const-string v1, "key_home_screen_search_bar_show_xiaoai_icon"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static putSystemSettings(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    if-eqz p0, :cond_1

    .line 538
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 539
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 540
    sget-object v2, Lcom/miui/home/launcher/LauncherSettings$Settings;->SYSTEM_SETTINGS:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 542
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 541
    invoke-static {v2, v1, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
