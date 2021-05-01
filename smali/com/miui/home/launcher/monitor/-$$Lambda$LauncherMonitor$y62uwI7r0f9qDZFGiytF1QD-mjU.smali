.class public final synthetic Lcom/miui/home/launcher/monitor/-$$Lambda$LauncherMonitor$y62uwI7r0f9qDZFGiytF1QD-mjU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/monitor/-$$Lambda$LauncherMonitor$y62uwI7r0f9qDZFGiytF1QD-mjU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/monitor/-$$Lambda$LauncherMonitor$y62uwI7r0f9qDZFGiytF1QD-mjU;

    invoke-direct {v0}, Lcom/miui/home/launcher/monitor/-$$Lambda$LauncherMonitor$y62uwI7r0f9qDZFGiytF1QD-mjU;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/monitor/-$$Lambda$LauncherMonitor$y62uwI7r0f9qDZFGiytF1QD-mjU;->INSTANCE:Lcom/miui/home/launcher/monitor/-$$Lambda$LauncherMonitor$y62uwI7r0f9qDZFGiytF1QD-mjU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-static {p1}, Lcom/miui/home/launcher/monitor/LauncherMonitor;->lambda$dumpHeap$577(Ljava/lang/Void;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method
