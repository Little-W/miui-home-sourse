.class public Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVR;
.super Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVQ;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVQ;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public static create(I)Lcom/android/systemui/shared/recents/system/ITaskSnapshot;
    .locals 1

    new-instance v0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVR;

    invoke-static {p0}, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVR;->getTaskSnapshotInstance(I)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVR;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method protected getScale(Landroid/app/ActivityManager$TaskSnapshot;I)F
    .locals 6

    const-class v0, Landroid/app/ActivityManager$TaskSnapshot;

    const-class v3, Landroid/graphics/Point;

    const/4 p0, 0x0

    new-array v4, p0, [Ljava/lang/Class;

    new-array v5, p0, [Ljava/lang/Object;

    const-string v2, "getTaskSize"

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Point;

    if-eqz p0, :cond_0

    iget p1, p0, Landroid/graphics/Point;->y:I

    if-eqz p1, :cond_0

    int-to-float p1, p2

    iget p0, p0, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    div-float/2addr p1, p0

    return p1

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method
