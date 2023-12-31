.class public Lcom/miui/launcher/common/InternalResource;
.super Ljava/lang/Object;
.source "InternalResource.java"


# static fields
.field public static final VIEW_ATTR:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    sget-object v0, Lcom/android/internal/R$styleable;->View:[I

    sput-object v0, Lcom/miui/launcher/common/InternalResource;->VIEW_ATTR:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
