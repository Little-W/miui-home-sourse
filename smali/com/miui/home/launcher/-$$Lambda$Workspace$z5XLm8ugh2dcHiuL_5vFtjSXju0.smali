.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Workspace$z5XLm8ugh2dcHiuL_5vFtjSXju0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Workspace;

.field private final synthetic f$1:Lcom/miui/home/launcher/DragObject;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Workspace$z5XLm8ugh2dcHiuL_5vFtjSXju0;->f$0:Lcom/miui/home/launcher/Workspace;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$Workspace$z5XLm8ugh2dcHiuL_5vFtjSXju0;->f$1:Lcom/miui/home/launcher/DragObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Workspace$z5XLm8ugh2dcHiuL_5vFtjSXju0;->f$0:Lcom/miui/home/launcher/Workspace;

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$Workspace$z5XLm8ugh2dcHiuL_5vFtjSXju0;->f$1:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/Workspace;->lambda$insertNewScreenIfNeed$6$Workspace(Lcom/miui/home/launcher/DragObject;)V

    return-void
.end method
