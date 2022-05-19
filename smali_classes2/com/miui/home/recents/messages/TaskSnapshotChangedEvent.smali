.class public Lcom/miui/home/recents/messages/TaskSnapshotChangedEvent;
.super Ljava/lang/Object;
.source "TaskSnapshotChangedEvent.java"


# instance fields
.field public final snapshot:Landroid/graphics/Bitmap;

.field public final taskId:I

.field public final taskThumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;


# direct methods
.method public constructor <init>(ILandroid/graphics/Bitmap;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/miui/home/recents/messages/TaskSnapshotChangedEvent;->taskId:I

    .line 14
    iput-object p2, p0, Lcom/miui/home/recents/messages/TaskSnapshotChangedEvent;->snapshot:Landroid/graphics/Bitmap;

    .line 15
    iput-object p3, p0, Lcom/miui/home/recents/messages/TaskSnapshotChangedEvent;->taskThumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    return-void
.end method
