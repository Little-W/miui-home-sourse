.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$EditingEntryThumbnailView$NaEZ1sB1eFRGfyN0iLPrtZYFpso;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava8/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/EditingEntryThumbnailView;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/EditingEntryThumbnailView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$EditingEntryThumbnailView$NaEZ1sB1eFRGfyN0iLPrtZYFpso;->f$0:Lcom/miui/home/launcher/EditingEntryThumbnailView;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$EditingEntryThumbnailView$NaEZ1sB1eFRGfyN0iLPrtZYFpso;->f$0:Lcom/miui/home/launcher/EditingEntryThumbnailView;

    check-cast p1, Lmiuix/animation/IFolme;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->lambda$hideWithFolmeAnim$1(Lcom/miui/home/launcher/EditingEntryThumbnailView;Lmiuix/animation/IFolme;)V

    return-void
.end method
