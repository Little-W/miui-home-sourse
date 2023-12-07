.class public Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hideapi/TransitionFilterExpose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequirementExpose"
.end annotation


# instance fields
.field private final instance:Landroid/window/TransitionFilter$Requirement;


# direct methods
.method private constructor <init>(Landroid/window/TransitionFilter$Requirement;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;->instance:Landroid/window/TransitionFilter$Requirement;

    return-void
.end method

.method public static newInstance()Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;
    .locals 3

    const-class v0, Landroid/window/TransitionFilter$Requirement;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/miui/launcher/utils/ReflectUtils;->createNewInstance(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TransitionFilter$Requirement;

    new-instance v1, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;

    invoke-direct {v1, v0}, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;-><init>(Landroid/window/TransitionFilter$Requirement;)V

    return-object v1
.end method


# virtual methods
.method public setActivityType(I)V
    .locals 2

    iget-object p0, p0, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;->instance:Landroid/window/TransitionFilter$Requirement;

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "mActivityType"

    invoke-static {p0, v1, v0, p1}, Lcom/miui/launcher/utils/ReflectUtils;->setValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public setFlag(I)V
    .locals 2

    iget-object p0, p0, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;->instance:Landroid/window/TransitionFilter$Requirement;

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "mFlags"

    invoke-static {p0, v1, v0, p1}, Lcom/miui/launcher/utils/ReflectUtils;->setValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public setModes([I)V
    .locals 2

    iget-object p0, p0, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;->instance:Landroid/window/TransitionFilter$Requirement;

    const-class v0, [I

    const-string v1, "mModes"

    invoke-static {p0, v1, v0, p1}, Lcom/miui/launcher/utils/ReflectUtils;->setValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public setMustBeIndependent(Z)V
    .locals 2

    iget-object p0, p0, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;->instance:Landroid/window/TransitionFilter$Requirement;

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "mMustBeIndependent"

    invoke-static {p0, v1, v0, p1}, Lcom/miui/launcher/utils/ReflectUtils;->setValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public setNot(Z)V
    .locals 2

    iget-object p0, p0, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;->instance:Landroid/window/TransitionFilter$Requirement;

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "mNot"

    invoke-static {p0, v1, v0, p1}, Lcom/miui/launcher/utils/ReflectUtils;->setValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public setOrder(I)V
    .locals 2

    iget-object p0, p0, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;->instance:Landroid/window/TransitionFilter$Requirement;

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "mOrder"

    invoke-static {p0, v1, v0, p1}, Lcom/miui/launcher/utils/ReflectUtils;->setValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public setTopActivity(Landroid/content/ComponentName;)V
    .locals 2

    iget-object p0, p0, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;->instance:Landroid/window/TransitionFilter$Requirement;

    const-class v0, Landroid/content/ComponentName;

    const-string v1, "mTopActivity"

    invoke-static {p0, v1, v0, p1}, Lcom/miui/launcher/utils/ReflectUtils;->setValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public unbox()Landroid/window/TransitionFilter$Requirement;
    .locals 0

    iget-object p0, p0, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;->instance:Landroid/window/TransitionFilter$Requirement;

    return-object p0
.end method
