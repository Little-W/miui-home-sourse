.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$AnalyticalDataCollector$g4g9LRjcn26vYWgzPM6f_-esVQE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/LauncherAppWidgetInfo;

.field private final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/LauncherAppWidgetInfo;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$AnalyticalDataCollector$g4g9LRjcn26vYWgzPM6f_-esVQE;->f$0:Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$AnalyticalDataCollector$g4g9LRjcn26vYWgzPM6f_-esVQE;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$AnalyticalDataCollector$g4g9LRjcn26vYWgzPM6f_-esVQE;->f$0:Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$AnalyticalDataCollector$g4g9LRjcn26vYWgzPM6f_-esVQE;->f$1:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->lambda$sendTrackWidgetExposureToAssistant$2(Lcom/miui/home/launcher/LauncherAppWidgetInfo;Landroid/content/Context;)V

    return-void
.end method
