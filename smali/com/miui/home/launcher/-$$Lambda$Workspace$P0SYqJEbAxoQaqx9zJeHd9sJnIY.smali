.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Workspace$P0SYqJEbAxoQaqx9zJeHd9sJnIY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava8/util/function/Consumer;


# instance fields
.field private final synthetic f$0:F


# direct methods
.method public synthetic constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/home/launcher/-$$Lambda$Workspace$P0SYqJEbAxoQaqx9zJeHd9sJnIY;->f$0:F

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/miui/home/launcher/-$$Lambda$Workspace$P0SYqJEbAxoQaqx9zJeHd9sJnIY;->f$0:F

    check-cast p1, Lcom/miui/home/launcher/CellScreen;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/Workspace;->lambda$updateNormalEditProgress$1(FLcom/miui/home/launcher/CellScreen;)V

    return-void
.end method
