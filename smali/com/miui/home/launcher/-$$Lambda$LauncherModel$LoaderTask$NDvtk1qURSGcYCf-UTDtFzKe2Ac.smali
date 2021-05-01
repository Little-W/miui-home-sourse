.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$LauncherModel$LoaderTask$NDvtk1qURSGcYCf-UTDtFzKe2Ac;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

.field private final synthetic f$1:Lcom/miui/home/launcher/LauncherAppWidgetInfo;

.field private final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Lcom/miui/home/launcher/LauncherAppWidgetInfo;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$LoaderTask$NDvtk1qURSGcYCf-UTDtFzKe2Ac;->f$0:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$LoaderTask$NDvtk1qURSGcYCf-UTDtFzKe2Ac;->f$1:Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    iput-wide p3, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$LoaderTask$NDvtk1qURSGcYCf-UTDtFzKe2Ac;->f$2:J

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$LoaderTask$NDvtk1qURSGcYCf-UTDtFzKe2Ac;->f$0:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    iget-object v1, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$LoaderTask$NDvtk1qURSGcYCf-UTDtFzKe2Ac;->f$1:Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    iget-wide v2, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$LoaderTask$NDvtk1qURSGcYCf-UTDtFzKe2Ac;->f$2:J

    invoke-static {v0, v1, v2, v3}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->lambda$loadAppWidget$92(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Lcom/miui/home/launcher/LauncherAppWidgetInfo;J)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
