.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$63$MFaO7gxlXDcw9h0o1uDBhd9KiGI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/maml/MaMlWidgetInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$63$MFaO7gxlXDcw9h0o1uDBhd9KiGI;->f$0:Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$63$MFaO7gxlXDcw9h0o1uDBhd9KiGI;->f$0:Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher$63;->lambda$onDownloadStatusChange$0(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)V

    return-void
.end method