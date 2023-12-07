.class public Lcom/android/hideapi/TransitionFilterExpose;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;
    }
.end annotation


# instance fields
.field private final instance:Landroid/window/TransitionFilter;


# direct methods
.method private constructor <init>(Landroid/window/TransitionFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/hideapi/TransitionFilterExpose;->instance:Landroid/window/TransitionFilter;

    return-void
.end method

.method public static box(Landroid/window/TransitionFilter;)Lcom/android/hideapi/TransitionFilterExpose;
    .locals 1

    new-instance v0, Lcom/android/hideapi/TransitionFilterExpose;

    invoke-direct {v0, p0}, Lcom/android/hideapi/TransitionFilterExpose;-><init>(Landroid/window/TransitionFilter;)V

    return-object v0
.end method

.method public static getCreator()Landroid/os/Parcelable$Creator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/TransitionFilter;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/window/TransitionFilter;

    const-class v1, Landroid/os/Parcelable$Creator;

    const-string v2, "CREATOR"

    invoke-static {v0, v2, v1}, Lcom/miui/launcher/utils/ReflectUtils;->getStaticFieldValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable$Creator;

    return-object v0
.end method

.method public static newInstance()Lcom/android/hideapi/TransitionFilterExpose;
    .locals 3

    const-class v0, Landroid/window/TransitionFilter;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/miui/launcher/utils/ReflectUtils;->createNewInstance(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TransitionFilter;

    new-instance v1, Lcom/android/hideapi/TransitionFilterExpose;

    invoke-direct {v1, v0}, Lcom/android/hideapi/TransitionFilterExpose;-><init>(Landroid/window/TransitionFilter;)V

    return-object v1
.end method


# virtual methods
.method public setNotFlags(I)V
    .locals 2

    iget-object p0, p0, Lcom/android/hideapi/TransitionFilterExpose;->instance:Landroid/window/TransitionFilter;

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "mNotFlags"

    invoke-static {p0, v1, v0, p1}, Lcom/miui/launcher/utils/ReflectUtils;->setValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public setRequirements([Landroid/window/TransitionFilter$Requirement;)V
    .locals 2

    iget-object p0, p0, Lcom/android/hideapi/TransitionFilterExpose;->instance:Landroid/window/TransitionFilter;

    const-class v0, [Landroid/window/TransitionFilter$Requirement;

    const-string v1, "mRequirements"

    invoke-static {p0, v1, v0, p1}, Lcom/miui/launcher/utils/ReflectUtils;->setValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public unbox()Landroid/window/TransitionFilter;
    .locals 0

    iget-object p0, p0, Lcom/android/hideapi/TransitionFilterExpose;->instance:Landroid/window/TransitionFilter;

    return-object p0
.end method
