.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$LauncherWidgetView$PRSJCk9wvHaQkyZLZtXbywrVgBQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/LauncherWidgetView;

.field private final synthetic f$1:Lcom/miui/home/launcher/LauncherAppWidgetInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/LauncherWidgetView;Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherWidgetView$PRSJCk9wvHaQkyZLZtXbywrVgBQ;->f$0:Lcom/miui/home/launcher/LauncherWidgetView;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherWidgetView$PRSJCk9wvHaQkyZLZtXbywrVgBQ;->f$1:Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherWidgetView$PRSJCk9wvHaQkyZLZtXbywrVgBQ;->f$0:Lcom/miui/home/launcher/LauncherWidgetView;

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherWidgetView$PRSJCk9wvHaQkyZLZtXbywrVgBQ;->f$1:Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/LauncherWidgetView;->lambda$onProviderChanged$1$LauncherWidgetView(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    return-void
.end method
