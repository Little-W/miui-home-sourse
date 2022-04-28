.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$61$1mZxxv9QvcB6XH5NPizQoDc6cKs;
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

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$61$1mZxxv9QvcB6XH5NPizQoDc6cKs;->f$0:Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$61$1mZxxv9QvcB6XH5NPizQoDc6cKs;->f$0:Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher$61;->lambda$onDownloadStatusChange$0(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)V

    return-void
.end method
