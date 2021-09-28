.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$WidgetSizeOptionUpdateHandler$XT_Ehf380je86uyTZG6snDo5a1w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Launcher$WidgetSizeOptionUpdateHandler;

.field private final synthetic f$1:[Lcom/miui/home/launcher/LauncherAppWidgetInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher$WidgetSizeOptionUpdateHandler;[Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$WidgetSizeOptionUpdateHandler$XT_Ehf380je86uyTZG6snDo5a1w;->f$0:Lcom/miui/home/launcher/Launcher$WidgetSizeOptionUpdateHandler;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$WidgetSizeOptionUpdateHandler$XT_Ehf380je86uyTZG6snDo5a1w;->f$1:[Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$WidgetSizeOptionUpdateHandler$XT_Ehf380je86uyTZG6snDo5a1w;->f$0:Lcom/miui/home/launcher/Launcher$WidgetSizeOptionUpdateHandler;

    iget-object v1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$WidgetSizeOptionUpdateHandler$XT_Ehf380je86uyTZG6snDo5a1w;->f$1:[Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher$WidgetSizeOptionUpdateHandler;->lambda$updateWidgetsSizeOption$0(Lcom/miui/home/launcher/Launcher$WidgetSizeOptionUpdateHandler;[Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    return-void
.end method
