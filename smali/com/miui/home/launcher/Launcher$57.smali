.class Lcom/miui/home/launcher/Launcher$57;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher;->preloadFolderContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;

.field final synthetic val$info:Lcom/miui/home/launcher/FolderInfo;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/FolderInfo;)V
    .locals 0

    .line 6541
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$57;->this$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/Launcher$57;->val$info:Lcom/miui/home/launcher/FolderInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 6544
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$57;->val$info:Lcom/miui/home/launcher/FolderInfo;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$57;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/FolderInfo;->preLoadContentView(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method
