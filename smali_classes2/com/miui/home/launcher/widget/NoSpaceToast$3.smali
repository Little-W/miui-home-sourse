.class Lcom/miui/home/launcher/widget/NoSpaceToast$3;
.super Ljava/lang/Object;
.source "NoSpaceToast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/widget/NoSpaceToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/widget/NoSpaceToast;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/widget/NoSpaceToast;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/miui/home/launcher/widget/NoSpaceToast$3;->this$0:Lcom/miui/home/launcher/widget/NoSpaceToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 55
    iget-object p0, p0, Lcom/miui/home/launcher/widget/NoSpaceToast$3;->this$0:Lcom/miui/home/launcher/widget/NoSpaceToast;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/NoSpaceToast;->show(Z)V

    return-void
.end method
