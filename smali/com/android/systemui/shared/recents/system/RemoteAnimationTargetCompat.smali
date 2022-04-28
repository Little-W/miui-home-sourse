.class public Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;
.super Ljava/lang/Object;
.source "RemoteAnimationTargetCompat.java"


# static fields
.field public static final ACTIVITY_TYPE_ASSISTANT:I = 0x4

.field public static final ACTIVITY_TYPE_HOME:I = 0x2

.field public static final ACTIVITY_TYPE_RECENTS:I = 0x3

.field public static final ACTIVITY_TYPE_STANDARD:I = 0x1

.field public static final ACTIVITY_TYPE_UNDEFINED:I = 0x0

.field public static final MODE_CLOSING:I = 0x1

.field public static final MODE_OPENING:I


# instance fields
.field public final activityType:I

.field public final clipRect:Landroid/graphics/Rect;

.field public final contentInsets:Landroid/graphics/Rect;

.field public final isNotInRecents:Z

.field public final isTranslucent:Z

.field public final leash:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

.field public final mode:I

.field public packageName:Ljava/lang/String;

.field public final position:Landroid/graphics/Point;

.field public final prefixOrderIndex:I

.field public final sourceContainerBounds:Landroid/graphics/Rect;

.field public final taskId:I


# direct methods
.method public constructor <init>(Landroid/view/RemoteAnimationTarget;)V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iget v0, p1, Landroid/view/RemoteAnimationTarget;->taskId:I

    iput v0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->taskId:I

    .line 58
    iget v0, p1, Landroid/view/RemoteAnimationTarget;->mode:I

    iput v0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->mode:I

    .line 59
    new-instance v0, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    iget-object v1, p1, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-direct {v0, v1}, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;-><init>(Landroid/view/SurfaceControl;)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    .line 60
    iget-boolean v0, p1, Landroid/view/RemoteAnimationTarget;->isTranslucent:Z

    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->isTranslucent:Z

    .line 61
    iget-object v0, p1, Landroid/view/RemoteAnimationTarget;->clipRect:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->clipRect:Landroid/graphics/Rect;

    .line 62
    iget-object v0, p1, Landroid/view/RemoteAnimationTarget;->position:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    .line 63
    iget-object v0, p1, Landroid/view/RemoteAnimationTarget;->sourceContainerBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->sourceContainerBounds:Landroid/graphics/Rect;

    .line 64
    iget v0, p1, Landroid/view/RemoteAnimationTarget;->prefixOrderIndex:I

    iput v0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->prefixOrderIndex:I

    .line 65
    iget-boolean v0, p1, Landroid/view/RemoteAnimationTarget;->isNotInRecents:Z

    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->isNotInRecents:Z

    .line 66
    iget-object v0, p1, Landroid/view/RemoteAnimationTarget;->contentInsets:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->contentInsets:Landroid/graphics/Rect;

    .line 67
    iget-object v0, p1, Landroid/view/RemoteAnimationTarget;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->activityType:I

    .line 69
    :try_start_0
    const-class v0, Landroid/view/RemoteAnimationTarget;

    const-string v1, "packageName"

    invoke-static {v0, v1}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 71
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 72
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 73
    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 76
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static wrap([Landroid/view/RemoteAnimationTarget;)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;
    .locals 4

    .line 96
    array-length v0, p0

    new-array v0, v0, [Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    const/4 v1, 0x0

    .line 98
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 99
    new-instance v2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;-><init>(Landroid/view/RemoteAnimationTarget;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public release()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    iget-object v0, v0, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteAnimationTargetCompat{taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->taskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->mode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isTranslucent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->isTranslucent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", clipRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->clipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sourceContainerBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->sourceContainerBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", prefixOrderIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->prefixOrderIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isNotInRecents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->isNotInRecents:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", contentInsets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->contentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", activityType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->activityType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
