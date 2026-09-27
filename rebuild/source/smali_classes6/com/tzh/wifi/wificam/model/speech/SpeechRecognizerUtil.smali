.class public Lcom/tzh/wifi/wificam/model/speech/SpeechRecognizerUtil;
.super Ljava/lang/Object;
.source "SpeechRecognizerUtil.java"


# static fields
.field private static final KWS_SEARCH:Ljava/lang/String; = "wakeup"


# instance fields
.field private isLoad:Z

.field private isRunning:Z

.field private parentFile:Ljava/io/File;

.field private final recognitionListener:Ledu/cmu/pocketsphinx/RecognitionListener;

.field private recognizer:Ledu/cmu/pocketsphinx/SpeechRecognizer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ledu/cmu/pocketsphinx/RecognitionListener;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/model/speech/SpeechRecognizerUtil;->isLoad:Z

    .line 63
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/model/speech/SpeechRecognizerUtil;->isRunning:Z

    .line 25
    iput-object p2, p0, Lcom/tzh/wifi/wificam/model/speech/SpeechRecognizerUtil;->recognitionListener:Ledu/cmu/pocketsphinx/RecognitionListener;

    .line 27
    :try_start_0
    new-instance p2, Ledu/cmu/pocketsphinx/Assets;

    invoke-direct {p2, p1}, Ledu/cmu/pocketsphinx/Assets;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-virtual {p2}, Ledu/cmu/pocketsphinx/Assets;->syncAssets()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/tzh/wifi/wificam/model/speech/SpeechRecognizerUtil;->parentFile:Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 32
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public isLoad()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcom/tzh/wifi/wificam/model/speech/SpeechRecognizerUtil;->isLoad:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lcom/tzh/wifi/wificam/model/speech/SpeechRecognizerUtil;->isRunning:Z

    return v0
.end method

.method public setupRecognizer(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tzh/wifi/wificam/model/speech/SpeechRecognizerUtil;->parentFile:Ljava/io/File;

    if-eqz p1, :cond_0

    const-string p1, "zh-ptm"

    goto :goto_0

    :cond_0
    const-string p1, "en-ptm"

    :goto_0
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 97
    invoke-static {}, Ledu/cmu/pocketsphinx/SpeechRecognizerSetup;->defaultSetup()Ledu/cmu/pocketsphinx/SpeechRecognizerSetup;

    move-result-object p1

    new-instance v1, Ljava/io/File;

    const-string v2, "ptm"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p1, v1}, Ledu/cmu/pocketsphinx/SpeechRecognizerSetup;->setAcousticModel(Ljava/io/File;)Ledu/cmu/pocketsphinx/SpeechRecognizerSetup;

    move-result-object p1

    new-instance v1, Ljava/io/File;

    const-string v2, "command.dic"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p1, v1}, Ledu/cmu/pocketsphinx/SpeechRecognizerSetup;->setDictionary(Ljava/io/File;)Ledu/cmu/pocketsphinx/SpeechRecognizerSetup;

    move-result-object p1

    .line 100
    invoke-virtual {p1, v0}, Ledu/cmu/pocketsphinx/SpeechRecognizerSetup;->setRawLogDir(Ljava/io/File;)Ledu/cmu/pocketsphinx/SpeechRecognizerSetup;

    move-result-object p1

    .line 101
    invoke-virtual {p1}, Ledu/cmu/pocketsphinx/SpeechRecognizerSetup;->getRecognizer()Ledu/cmu/pocketsphinx/SpeechRecognizer;

    move-result-object p1

    iput-object p1, p0, Lcom/tzh/wifi/wificam/model/speech/SpeechRecognizerUtil;->recognizer:Ledu/cmu/pocketsphinx/SpeechRecognizer;

    .line 102
    iget-object v1, p0, Lcom/tzh/wifi/wificam/model/speech/SpeechRecognizerUtil;->recognitionListener:Ledu/cmu/pocketsphinx/RecognitionListener;

    invoke-virtual {p1, v1}, Ledu/cmu/pocketsphinx/SpeechRecognizer;->addListener(Ledu/cmu/pocketsphinx/RecognitionListener;)V

    .line 113
    new-instance p1, Ljava/io/File;

    const-string v1, "menu.gram"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/speech/SpeechRecognizerUtil;->recognizer:Ledu/cmu/pocketsphinx/SpeechRecognizer;

    const-string v1, "wakeup"

    invoke-virtual {v0, v1, p1}, Ledu/cmu/pocketsphinx/SpeechRecognizer;->addGrammarSearch(Ljava/lang/String;Ljava/io/File;)V

    const/4 p1, 0x1

    .line 116
    iput-boolean p1, p0, Lcom/tzh/wifi/wificam/model/speech/SpeechRecognizerUtil;->isLoad:Z

    return-void
.end method

.method public shutdown()V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/speech/SpeechRecognizerUtil;->recognizer:Ledu/cmu/pocketsphinx/SpeechRecognizer;

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0}, Ledu/cmu/pocketsphinx/SpeechRecognizer;->cancel()Z

    .line 81
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/speech/SpeechRecognizerUtil;->recognizer:Ledu/cmu/pocketsphinx/SpeechRecognizer;

    invoke-virtual {v0}, Ledu/cmu/pocketsphinx/SpeechRecognizer;->shutdown()V

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/model/speech/SpeechRecognizerUtil;->isLoad:Z

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/speech/SpeechRecognizerUtil;->recognizer:Ledu/cmu/pocketsphinx/SpeechRecognizer;

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0}, Ledu/cmu/pocketsphinx/SpeechRecognizer;->stop()Z

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/model/speech/SpeechRecognizerUtil;->isRunning:Z

    :cond_0
    return-void
.end method

.method public switchSearch()V
    .locals 4

    .line 41
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/speech/SpeechRecognizerUtil;->recognizer:Ledu/cmu/pocketsphinx/SpeechRecognizer;

    const-string v1, "SpeechRecognizerUtil"

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0}, Ledu/cmu/pocketsphinx/SpeechRecognizer;->stop()Z

    .line 47
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/speech/SpeechRecognizerUtil;->recognizer:Ledu/cmu/pocketsphinx/SpeechRecognizer;

    const-string v2, "wakeup"

    const/16 v3, 0x7530

    invoke-virtual {v0, v2, v3}, Ledu/cmu/pocketsphinx/SpeechRecognizer;->startListening(Ljava/lang/String;I)Z

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/model/speech/SpeechRecognizerUtil;->isRunning:Z

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onEndOfSpeech recognizer:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tzh/wifi/wificam/model/speech/SpeechRecognizerUtil;->recognizer:Ledu/cmu/pocketsphinx/SpeechRecognizer;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 51
    :cond_0
    const-string v0, "onEndOfSpeech recognizer-----"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
