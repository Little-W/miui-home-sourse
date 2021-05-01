.class Lcom/miui/home/launcher/install/AutoInstallsLayout$AppShortcutParser;
.super Ljava/lang/Object;
.source "AutoInstallsLayout.java"

# interfaces
.implements Lcom/miui/home/launcher/install/AutoInstallsLayout$TagParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/install/AutoInstallsLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppShortcutParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/install/AutoInstallsLayout;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/install/AutoInstallsLayout;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout$AppShortcutParser;->this$0:Lcom/miui/home/launcher/install/AutoInstallsLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/install/AutoInstallsLayout;Lcom/miui/home/launcher/install/AutoInstallsLayout$1;)V
    .locals 0

    .line 351
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/install/AutoInstallsLayout$AppShortcutParser;-><init>(Lcom/miui/home/launcher/install/AutoInstallsLayout;)V

    return-void
.end method


# virtual methods
.method public parseAndAdd(Landroid/content/res/XmlResourceParser;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 7

    const-string v0, "packageName"

    .line 354
    invoke-static {p1, v0}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "className"

    .line 355
    invoke-static {p1, v0}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 356
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "retained"

    .line 359
    invoke-static {p1, v0}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 360
    iget-object v1, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout$AppShortcutParser;->this$0:Lcom/miui/home/launcher/install/AutoInstallsLayout;

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v1 .. v6}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$500(Lcom/miui/home/launcher/install/AutoInstallsLayout;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Z)J

    move-result-wide p1

    return-wide p1

    :cond_1
    :goto_0
    const-wide/16 p1, -0x1

    return-wide p1
.end method
