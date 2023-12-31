.class public Lmiui/app/TaskInfoExpose;
.super Ljava/lang/Object;
.source "TaskInfoExpose.java"


# static fields
.field private static final CLASS:Lcom/miui/expose/utils/ClassHolder;

.field private static final displayId:Lcom/miui/expose/utils/FieldHolder;


# instance fields
.field private final instance:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 8
    new-instance v0, Lcom/miui/expose/utils/ClassHolder;

    const-string v1, "android.app.TaskInfo"

    invoke-direct {v0, v1}, Lcom/miui/expose/utils/ClassHolder;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/app/TaskInfoExpose;->CLASS:Lcom/miui/expose/utils/ClassHolder;

    .line 9
    new-instance v0, Lcom/miui/expose/utils/FieldHolder;

    sget-object v1, Lmiui/app/TaskInfoExpose;->CLASS:Lcom/miui/expose/utils/ClassHolder;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v3, "displayId"

    invoke-direct {v0, v1, v3, v2}, Lcom/miui/expose/utils/FieldHolder;-><init>(Lcom/miui/expose/utils/ClassHolder;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lmiui/app/TaskInfoExpose;->displayId:Lcom/miui/expose/utils/FieldHolder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lmiui/app/TaskInfoExpose;->instance:Ljava/lang/Object;

    return-void
.end method

.method public static box(Ljava/lang/Object;)Lmiui/app/TaskInfoExpose;
    .locals 1

    .line 24
    new-instance v0, Lmiui/app/TaskInfoExpose;

    invoke-direct {v0, p0}, Lmiui/app/TaskInfoExpose;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getDisplayId()I
    .locals 1

    .line 16
    sget-object v0, Lmiui/app/TaskInfoExpose;->displayId:Lcom/miui/expose/utils/FieldHolder;

    iget-object p0, p0, Lmiui/app/TaskInfoExpose;->instance:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Lcom/miui/expose/utils/FieldHolder;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method
