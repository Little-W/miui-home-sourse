.class public Lcom/market/sdk/homeguide/ViewConfig;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public iconLocation:[I

.field public iconPaddingBottom:I

.field public iconPaddingLeft:I

.field public iconPaddingRight:I

.field public iconPaddingTop:I

.field public titleHeight:I

.field public titleLocation:[I

.field public titlePaddingBottom:I

.field public titlePaddingLeft:I

.field public titlePaddingRight:I

.field public titlePaddingTop:I

.field public titleTextColor:I

.field public titleTextSize:F

.field public titleWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/market/sdk/homeguide/ViewConfig;->titleLocation:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/market/sdk/homeguide/ViewConfig;->iconLocation:[I

    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 1

    iget-object v0, p0, Lcom/market/sdk/homeguide/ViewConfig;->iconLocation:[I

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/market/sdk/homeguide/ViewConfig;->titleLocation:[I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
