.class final Lcom/miui/home/launcher/folder/FolderAnimHelper$prepareSpringAnimation$1;
.super Ljava/lang/Object;
.source "FolderAnimHelper.kt"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/folder/FolderAnimHelper;->prepareSpringAnimation(ZLandroid/view/View;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;FFFFFFLcom/miui/home/launcher/FolderInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $animation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field final synthetic $folderInfo:Lcom/miui/home/launcher/FolderInfo;

.field final synthetic this$0:Lcom/miui/home/launcher/folder/FolderAnimHelper;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/folder/FolderAnimHelper;Landroidx/dynamicanimation/animation/SpringAnimation;Lcom/miui/home/launcher/FolderInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderAnimHelper$prepareSpringAnimation$1;->this$0:Lcom/miui/home/launcher/folder/FolderAnimHelper;

    iput-object p2, p0, Lcom/miui/home/launcher/folder/FolderAnimHelper$prepareSpringAnimation$1;->$animation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iput-object p3, p0, Lcom/miui/home/launcher/folder/FolderAnimHelper$prepareSpringAnimation$1;->$folderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/dynamicanimation/animation/DynamicAnimation<",
            "Landroidx/dynamicanimation/animation/DynamicAnimation<",
            "*>;>;ZFF)V"
        }
    .end annotation

    .line 344
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderAnimHelper$prepareSpringAnimation$1;->this$0:Lcom/miui/home/launcher/folder/FolderAnimHelper;

    invoke-static {p1}, Lcom/miui/home/launcher/folder/FolderAnimHelper;->access$getSpringItemAnimList$p(Lcom/miui/home/launcher/folder/FolderAnimHelper;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/home/launcher/folder/FolderAnimHelper$prepareSpringAnimation$1;->$animation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 345
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderAnimHelper$prepareSpringAnimation$1;->this$0:Lcom/miui/home/launcher/folder/FolderAnimHelper;

    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderAnimHelper$prepareSpringAnimation$1;->$folderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-static {p1, p0}, Lcom/miui/home/launcher/folder/FolderAnimHelper;->access$onAnimationEnd(Lcom/miui/home/launcher/folder/FolderAnimHelper;Lcom/miui/home/launcher/FolderInfo;)V

    return-void
.end method
