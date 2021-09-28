.class public final synthetic Lcom/miui/home/launcher/monitor/-$$Lambda$LauncherMonitor$St8YJooFUsiAEcjS7qFbZRWgNlA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/monitor/-$$Lambda$LauncherMonitor$St8YJooFUsiAEcjS7qFbZRWgNlA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/monitor/-$$Lambda$LauncherMonitor$St8YJooFUsiAEcjS7qFbZRWgNlA;

    invoke-direct {v0}, Lcom/miui/home/launcher/monitor/-$$Lambda$LauncherMonitor$St8YJooFUsiAEcjS7qFbZRWgNlA;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/monitor/-$$Lambda$LauncherMonitor$St8YJooFUsiAEcjS7qFbZRWgNlA;->INSTANCE:Lcom/miui/home/launcher/monitor/-$$Lambda$LauncherMonitor$St8YJooFUsiAEcjS7qFbZRWgNlA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/io/File;

    invoke-static {p1}, Lcom/miui/home/launcher/monitor/LauncherMonitor;->lambda$dumpHeap$1(Ljava/io/File;)V

    return-void
.end method
