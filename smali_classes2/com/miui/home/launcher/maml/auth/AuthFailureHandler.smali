.class public interface abstract Lcom/miui/home/launcher/maml/auth/AuthFailureHandler;
.super Ljava/lang/Object;
.source "AuthFailureHandler.java"


# static fields
.field public static final STRATEGIES:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 13
    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/home/launcher/maml/auth/AuthFailureHandler;->STRATEGIES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public static getFailureHandler(I)Lcom/miui/home/launcher/maml/auth/AuthFailureHandler;
    .locals 0

    if-nez p0, :cond_0

    .line 19
    new-instance p0, Lcom/miui/home/launcher/maml/auth/DefaultFailureHandler;

    invoke-direct {p0}, Lcom/miui/home/launcher/maml/auth/DefaultFailureHandler;-><init>()V

    return-object p0

    .line 21
    :cond_0
    new-instance p0, Lcom/miui/home/launcher/maml/auth/RadicalFailureHandler;

    invoke-direct {p0}, Lcom/miui/home/launcher/maml/auth/RadicalFailureHandler;-><init>()V

    return-object p0
.end method


# virtual methods
.method public abstract onFail(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)V
.end method
