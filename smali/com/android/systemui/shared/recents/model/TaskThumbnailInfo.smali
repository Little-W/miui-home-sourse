.class public Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final ATTR_SCREEN_ORIENTATION:Ljava/lang/String; = "task_thumbnailinfo_screen_orientation"

.field private static final ATTR_TASK_HEIGHT:Ljava/lang/String; = "task_thumbnailinfo_task_height"

.field public static final ATTR_TASK_THUMBNAILINFO_PREFIX:Ljava/lang/String; = "task_thumbnailinfo_"

.field private static final ATTR_TASK_WIDTH:Ljava/lang/String; = "task_thumbnailinfo_task_width"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public appearance:I

.field public insets:Landroid/graphics/Rect;

.field public mWindowMod:I

.field public scale:F

.field public screenOrientation:I

.field public systemUiVisibility:I

.field public taskHeight:I

.field public taskWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo$1;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo$1;-><init>()V

    sput-object v0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->screenOrientation:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->scale:F

    iput v0, p0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->mWindowMod:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->screenOrientation:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->scale:F

    iput v0, p0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->mWindowMod:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;)V
    .locals 1

    iget v0, p1, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->taskWidth:I

    iput v0, p0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->taskWidth:I

    iget v0, p1, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->taskHeight:I

    iput v0, p0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->taskHeight:I

    iget p1, p1, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->screenOrientation:I

    iput p1, p0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->screenOrientation:I

    return-void
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->taskWidth:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->taskHeight:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->screenOrientation:I

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->taskWidth:I

    iput v0, p0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->taskHeight:I

    iput v0, p0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->screenOrientation:I

    return-void
.end method

.method public restoreFromXml(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "task_thumbnailinfo_task_width"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->taskWidth:I

    goto :goto_0

    :cond_0
    const-string v0, "task_thumbnailinfo_task_height"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->taskHeight:I

    goto :goto_0

    :cond_1
    const-string v0, "task_thumbnailinfo_screen_orientation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->screenOrientation:I

    :cond_2
    :goto_0
    return-void
.end method

.method public saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->taskWidth:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "task_thumbnailinfo_task_width"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v0, p0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->taskHeight:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "task_thumbnailinfo_task_height"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget p0, p0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->screenOrientation:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "task_thumbnailinfo_screen_orientation"

    invoke-interface {p1, v1, v0, p0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->taskWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->taskHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->screenOrientation:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
