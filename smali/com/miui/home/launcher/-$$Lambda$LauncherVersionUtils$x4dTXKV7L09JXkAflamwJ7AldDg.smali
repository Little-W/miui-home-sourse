.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$LauncherVersionUtils$x4dTXKV7L09JXkAflamwJ7AldDg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/io/FilenameFilter;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/-$$Lambda$LauncherVersionUtils$x4dTXKV7L09JXkAflamwJ7AldDg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$LauncherVersionUtils$x4dTXKV7L09JXkAflamwJ7AldDg;

    invoke-direct {v0}, Lcom/miui/home/launcher/-$$Lambda$LauncherVersionUtils$x4dTXKV7L09JXkAflamwJ7AldDg;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/-$$Lambda$LauncherVersionUtils$x4dTXKV7L09JXkAflamwJ7AldDg;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$LauncherVersionUtils$x4dTXKV7L09JXkAflamwJ7AldDg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/miui/home/launcher/LauncherVersionUtils;->lambda$moveDrawerDatabaseFile$0(Ljava/io/File;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
