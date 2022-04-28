.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$FolderInfo$CRwpfrS3PbQ6HPKytdy1LIozWqk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/FolderInfo;

.field private final synthetic f$1:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$FolderInfo$CRwpfrS3PbQ6HPKytdy1LIozWqk;->f$0:Lcom/miui/home/launcher/FolderInfo;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$FolderInfo$CRwpfrS3PbQ6HPKytdy1LIozWqk;->f$1:Lcom/miui/home/launcher/Launcher;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$FolderInfo$CRwpfrS3PbQ6HPKytdy1LIozWqk;->f$0:Lcom/miui/home/launcher/FolderInfo;

    iget-object v1, p0, Lcom/miui/home/launcher/-$$Lambda$FolderInfo$CRwpfrS3PbQ6HPKytdy1LIozWqk;->f$1:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/FolderInfo;->lambda$preLoadContentView$0(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method
