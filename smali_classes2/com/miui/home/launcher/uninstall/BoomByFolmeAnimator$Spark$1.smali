.class Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark$1;
.super Lmiuix/animation/property/FloatProperty;
.source "BoomByFolmeAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;Ljava/lang/String;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark$1;->this$0:Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;

    invoke-direct {p0, p2}, Lmiuix/animation/property/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Ljava/lang/Object;)F
    .locals 0

    .line 264
    iget-object p1, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark$1;->this$0:Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;

    invoke-static {p1}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->access$500(Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;)F

    move-result p1

    return p1
.end method

.method public setValue(Ljava/lang/Object;F)V
    .locals 1

    .line 269
    iget-object p1, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark$1;->this$0:Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;

    invoke-static {p1}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->access$500(Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;)F

    move-result v0

    sub-float/2addr p2, v0

    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark$1;->this$0:Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;

    invoke-static {v0}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->access$600(Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;)F

    move-result v0

    mul-float/2addr p2, v0

    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark$1;->this$0:Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;

    invoke-static {v0}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->access$500(Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;)F

    move-result v0

    add-float/2addr p2, v0

    invoke-static {p1, p2}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->access$502(Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;F)F

    return-void
.end method
