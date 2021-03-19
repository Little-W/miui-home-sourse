.class public final Lcom/miui/home/launcher/LauncherCategory$Settings;
.super Ljava/lang/Object;
.source "LauncherCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/LauncherCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Settings"
.end annotation


# static fields
.field private static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.miui.home.launcher.category"

    .line 289
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/LauncherCategory$Settings;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public static call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .line 296
    sget-object v0, Lcom/miui/home/launcher/LauncherCategory$Settings;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
