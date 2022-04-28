.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$61$0xWEHN1N9abIUPTZaqm6lEObDpk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$61$0xWEHN1N9abIUPTZaqm6lEObDpk;->f$0:Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    iput p2, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$61$0xWEHN1N9abIUPTZaqm6lEObDpk;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$61$0xWEHN1N9abIUPTZaqm6lEObDpk;->f$0:Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    iget v1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$61$0xWEHN1N9abIUPTZaqm6lEObDpk;->f$1:I

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher$61;->lambda$onDownloadProgress$1(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;I)V

    return-void
.end method
