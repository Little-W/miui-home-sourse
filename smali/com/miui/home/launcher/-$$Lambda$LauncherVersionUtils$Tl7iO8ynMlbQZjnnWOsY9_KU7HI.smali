.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$LauncherVersionUtils$Tl7iO8ynMlbQZjnnWOsY9_KU7HI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/io/FilenameFilter;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/-$$Lambda$LauncherVersionUtils$Tl7iO8ynMlbQZjnnWOsY9_KU7HI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$LauncherVersionUtils$Tl7iO8ynMlbQZjnnWOsY9_KU7HI;

    invoke-direct {v0}, Lcom/miui/home/launcher/-$$Lambda$LauncherVersionUtils$Tl7iO8ynMlbQZjnnWOsY9_KU7HI;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/-$$Lambda$LauncherVersionUtils$Tl7iO8ynMlbQZjnnWOsY9_KU7HI;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$LauncherVersionUtils$Tl7iO8ynMlbQZjnnWOsY9_KU7HI;

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

    invoke-static {p1, p2}, Lcom/miui/home/launcher/LauncherVersionUtils;->lambda$moveDrawerDatabaseFile$408(Ljava/io/File;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
