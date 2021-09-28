.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$LauncherWidgetView$juFZigDfeGcxx7W0h52tRukFf0E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/LauncherWidgetView;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/LauncherWidgetView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherWidgetView$juFZigDfeGcxx7W0h52tRukFf0E;->f$0:Lcom/miui/home/launcher/LauncherWidgetView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherWidgetView$juFZigDfeGcxx7W0h52tRukFf0E;->f$0:Lcom/miui/home/launcher/LauncherWidgetView;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherWidgetView;->lambda$onVisible$0(Lcom/miui/home/launcher/LauncherWidgetView;)V

    return-void
.end method
