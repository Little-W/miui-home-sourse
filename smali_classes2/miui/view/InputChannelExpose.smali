.class public Lmiui/view/InputChannelExpose;
.super Ljava/lang/Object;
.source "InputChannelExpose.java"


# static fields
.field static final CLASS:Lcom/miui/expose/utils/ClassHolder;


# instance fields
.field private final instance:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 6
    new-instance v0, Lcom/miui/expose/utils/ClassHolder;

    const-string v1, "android.view.InputChannel"

    invoke-direct {v0, v1}, Lcom/miui/expose/utils/ClassHolder;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/view/InputChannelExpose;->CLASS:Lcom/miui/expose/utils/ClassHolder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lmiui/view/InputChannelExpose;->instance:Ljava/lang/Object;

    return-void
.end method

.method public static box(Ljava/lang/Object;)Lmiui/view/InputChannelExpose;
    .locals 1

    .line 19
    new-instance v0, Lmiui/view/InputChannelExpose;

    invoke-direct {v0, p0}, Lmiui/view/InputChannelExpose;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public unbox()Ljava/lang/Object;
    .locals 0

    .line 15
    iget-object p0, p0, Lmiui/view/InputChannelExpose;->instance:Ljava/lang/Object;

    return-object p0
.end method
