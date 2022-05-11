.class Lcom/miui/home/launcher/Launcher$76;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher;->checkDuplicateIconWhenRecommendAdded(Lcom/miui/home/launcher/ShortcutInfo;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;

.field final synthetic val$existItem:Lcom/miui/home/launcher/ShortcutInfo;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    .line 8235
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$76;->this$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/Launcher$76;->val$existItem:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 8237
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$76;->this$0:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$76;->val$existItem:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher;->access$9000(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)Z

    return-void
.end method
