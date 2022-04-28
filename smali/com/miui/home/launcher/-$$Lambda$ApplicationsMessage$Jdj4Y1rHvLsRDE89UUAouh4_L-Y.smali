.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$ApplicationsMessage$Jdj4Y1rHvLsRDE89UUAouh4_L-Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/FolderIcon;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/FolderIcon;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$ApplicationsMessage$Jdj4Y1rHvLsRDE89UUAouh4_L-Y;->f$0:Lcom/miui/home/launcher/FolderIcon;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$ApplicationsMessage$Jdj4Y1rHvLsRDE89UUAouh4_L-Y;->f$0:Lcom/miui/home/launcher/FolderIcon;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/ApplicationsMessage;->lambda$updateFolderMessage$1(Lcom/miui/home/launcher/FolderIcon;Ljava/lang/Integer;)V

    return-void
.end method
