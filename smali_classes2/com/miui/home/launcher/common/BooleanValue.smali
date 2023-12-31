.class public Lcom/miui/home/launcher/common/BooleanValue;
.super Ljava/lang/Object;
.source "BooleanValue.java"


# instance fields
.field private value:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-boolean p1, p0, Lcom/miui/home/launcher/common/BooleanValue;->value:Z

    return-void
.end method


# virtual methods
.method public getValue()Z
    .locals 0

    .line 12
    iget-boolean p0, p0, Lcom/miui/home/launcher/common/BooleanValue;->value:Z

    return p0
.end method

.method public setValue(Z)V
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/miui/home/launcher/common/BooleanValue;->value:Z

    return-void
.end method
