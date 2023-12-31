.class public Lcom/miui/home/recents/views/TaskView$TaskIdAttributeContainer;
.super Ljava/lang/Object;
.source "TaskView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/views/TaskView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TaskIdAttributeContainer"
.end annotation


# instance fields
.field private final mIconView:Landroid/widget/ImageView;

.field private mStagePosition:I

.field private final mTask:Lcom/android/systemui/shared/recents/model/Task;

.field private final mThumbnailView:Lcom/miui/home/recents/views/TaskViewThumbnail;

.field final synthetic this$0:Lcom/miui/home/recents/views/TaskView;


# direct methods
.method public constructor <init>(Lcom/miui/home/recents/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;Lcom/miui/home/recents/views/TaskViewThumbnail;Landroid/widget/ImageView;I)V
    .locals 0

    .line 938
    iput-object p1, p0, Lcom/miui/home/recents/views/TaskView$TaskIdAttributeContainer;->this$0:Lcom/miui/home/recents/views/TaskView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 939
    iput-object p2, p0, Lcom/miui/home/recents/views/TaskView$TaskIdAttributeContainer;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    .line 940
    iput-object p3, p0, Lcom/miui/home/recents/views/TaskView$TaskIdAttributeContainer;->mThumbnailView:Lcom/miui/home/recents/views/TaskViewThumbnail;

    .line 941
    iput-object p4, p0, Lcom/miui/home/recents/views/TaskView$TaskIdAttributeContainer;->mIconView:Landroid/widget/ImageView;

    .line 942
    iput p5, p0, Lcom/miui/home/recents/views/TaskView$TaskIdAttributeContainer;->mStagePosition:I

    return-void
.end method


# virtual methods
.method public getIconView()Landroid/widget/ImageView;
    .locals 0

    .line 962
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskView$TaskIdAttributeContainer;->mIconView:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getTask()Lcom/android/systemui/shared/recents/model/Task;
    .locals 0

    .line 950
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskView$TaskIdAttributeContainer;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    return-object p0
.end method

.method public getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;
    .locals 0

    .line 946
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskView$TaskIdAttributeContainer;->mThumbnailView:Lcom/miui/home/recents/views/TaskViewThumbnail;

    return-object p0
.end method
