.class Lcom/miui/home/launcher/Workspace$4;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Workspace;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Workspace;)V
    .locals 0

    .line 1114
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace$4;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1116
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace$4;->this$0:Lcom/miui/home/launcher/Workspace;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miui/home/launcher/Workspace;->access$302(Lcom/miui/home/launcher/Workspace;Z)Z

    return-void
.end method
