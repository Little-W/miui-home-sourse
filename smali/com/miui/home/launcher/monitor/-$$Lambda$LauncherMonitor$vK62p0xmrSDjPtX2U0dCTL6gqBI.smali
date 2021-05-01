.class public final synthetic Lcom/miui/home/launcher/monitor/-$$Lambda$LauncherMonitor$vK62p0xmrSDjPtX2U0dCTL6gqBI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/monitor/-$$Lambda$LauncherMonitor$vK62p0xmrSDjPtX2U0dCTL6gqBI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/monitor/-$$Lambda$LauncherMonitor$vK62p0xmrSDjPtX2U0dCTL6gqBI;

    invoke-direct {v0}, Lcom/miui/home/launcher/monitor/-$$Lambda$LauncherMonitor$vK62p0xmrSDjPtX2U0dCTL6gqBI;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/monitor/-$$Lambda$LauncherMonitor$vK62p0xmrSDjPtX2U0dCTL6gqBI;->INSTANCE:Lcom/miui/home/launcher/monitor/-$$Lambda$LauncherMonitor$vK62p0xmrSDjPtX2U0dCTL6gqBI;

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

    invoke-static {p1}, Lcom/miui/home/launcher/monitor/LauncherMonitor;->lambda$dumpHeap$578(Ljava/io/File;)V

    return-void
.end method
